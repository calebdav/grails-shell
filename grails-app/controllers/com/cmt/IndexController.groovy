package com.cmt

import com.champion.Customer
import com.champion.StoreOrder

class IndexController {

    def index() {
        [customerList: Customer.findAll(), storeOrderList: StoreOrder.findAll()]
    }
}
