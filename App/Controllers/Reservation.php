<?php

namespace App\Controllers;

use \Core\View;
use \App\Models\Order;

/**
 * Reservation controller
 *
 */
class Reservation extends \Core\Controller
{

    public $errors = [];

    /**
     * Show the index page
     *
     * @return void
     */
    public function indexAction(){
        $order = new Order($_GET);
        $ordersData = $order->getAll();

        View::renderTemplate('Order/index.html', [
                'ordersData' => $ordersData,
                'pagination' => $order->paginglink($order->total_records, $order->per_page, (isset($_GET['search']) ? $_GET['search'] : null)),
                'searchQ'    => (isset($_GET['search']) ? $_GET['search'] : null),
            ]);

    }

    /**
     * Create new order
     *
     * @return void
     */
    public function createAction(){

        $order = new Order($_POST);

        if ($order->save()) {
            View::renderTemplate('Order/success.html');
        }else{
            View::renderTemplate('Home/index.html', [
               'order' => $order
            ]);
        }

    }
}
