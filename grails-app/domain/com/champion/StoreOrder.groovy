package com.champion

class StoreOrder {
    Date orderCreated
    Store store
    Customer customer
    Item items
    static belongsTo = [customer:Customer, store:Store]
    static hasMany = [items:Item]

    static constraints = {
        orderCreated()
        customer()
        store()
        items()
    }
}
