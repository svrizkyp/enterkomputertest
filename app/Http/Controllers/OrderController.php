<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\ProductVariant;
use App\Models\Product;
use App\Models\PrinterStation;
use App\Models\Table;
use App\Models\Variant;
use Illuminate\Http\Request;
use App\Models\ProductPromo;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $orders = Order::latest()->paginate(10);
        return [
            "status" => 'success',
            "data" => $orders
        ];
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $isMakanan = false;
        $isMinuman = false;
        $order = Order::create($request->all()['order_header']);
        $detailData = $request->all()['order_detail'];
        foreach($detailData as $k => $v) {
          $detailData[$k]['order_id'] = $order['id'];
          $product_id = ProductVariant::select('product_id')->where('id', $detailData[$k]['product_variant_id'])->get();
          $product_category = Product::select('category')->where('id', $product_id[0]->product_id)->get();
          if ($product_category[0]->category == 'minuman') {
              $isMinuman = true;
          }
          if ($product_category[0]->category == 'makanan') {
              $isMakanan = true;
          }
        }
        $orderDetail = OrderDetail::insert($detailData);
        $printer = [];
        if ($isMakanan == true) {
            $printer_name = PrinterStation::select('name')->where('id', 2)->get();
            $printer_name = $printer_name[0]->name;
            array_push($printer,$printer_name);
        }
        if ($isMinuman == true) {
            $printer_name = PrinterStation::select('name')->where('id', 3)->get();
            $printer_name = $printer_name[0]->name;
            array_push($printer,$printer_name);
        }
        return [
            "status" => 'success',
            "order_header" => $order,
            "order_detail" => $detailData,
            "printer" => $printer
        ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {
        $order_id = $request->route('order_id');
        $table_id = $request->route('table_id');
        $order = Order::select('*')->where('id', $order_id)->where('table_id', $table_id)->get();
        $orderDetail = OrderDetail::select('*')->where('order_id', $order_id)->get();
        $discountPrice = 0;
        foreach($orderDetail as $k => $v) {
          $productId = ProductVariant::select('product_id')->where('id', $orderDetail[$k]['product_variant_id'])->get();
          $productName = Product::select('name')->where('id', $productId[0]->product_id)->get();
          $variantId = ProductVariant::select('variant_id')->where('id', $orderDetail[$k]['product_variant_id'])->get();
          $productVariant = Variant::select('name')->where('id', $variantId[0]->variant_id)->get();
          $orderDetail[$k]['product_name'] = $productName[0]->name;
          $orderDetail[$k]['product_variant'] = $productVariant[0]->name;
        }
        foreach($order as $k => $v) {
          $orderPromo = ProductPromo::select('promo_price')->where('id', $order[$k]['product_promo_id'])->get();
          $discountPrice = $orderPromo[0]->promo_price*$order[$k]['product_promo_qty'];
          $tableName = Table::select('name')->where('id', $order[$k]['table_id'])->get();
          $order[$k]['table_name'] = $tableName[0]->name;
          $order[$k]['discount_price'] = $discountPrice;
          $order[$k]['base_total_price'] = $order[$k]['total_price']-$order[$k]['discount_price'];
        }
        return [
            "status" => 'success',
            "order_header" => $order,
            "order_detail" => $orderDetail
        ];
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function edit(Order $order)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Order $order)
    {
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function destroy(Order $order)
    {
        
    }
}
