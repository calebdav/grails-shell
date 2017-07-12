package com.cmt

import com.champion.Customer
import com.champion.Item
import com.champion.Store

class BootStrap {

    def init = { servletContext ->
        new Customer(name: "Tim Stevens", address: "123 E Private Dr", city: "Tempe", state: "Arizona",
                zip: "85281", phoneNumber: "(555)555-5555", dob: new Date().copyWith(year: 1985,
                month: Calendar.MAY, dayOfMonth: 15, hourOfDay: 0, minute: 0, second: 0)).save()
        new Customer(name: "John Doe", address: "8524 W Fake St", city: "Phoenix", state: "Arizona",
                zip: "85228", phoneNumber: "(555)423-4587", dob: new Date().copyWith(year: 1971,
                month: Calendar.JUNE, dayOfMonth: 9, hourOfDay: 0, minute: 0, second: 0)).save()
        new Store(name: "Safeway", address: "123 E Broadway Dr", city: "Tempe",
                state: "Arizona", zip: "85281", phoneNumber: "(623)555-4875", itemType: "Groceries").save()
        new Store(name: "Sports Authority", address: "342 S Elliot", city: "Tempe",
                state: "Arizona", zip: "85281", phoneNumber: "(623)485-4875", itemType: "Sporting Goods").save()
        new Item(catalogNumber: 74523, description: "Basketball", price: 19.99).save()
        new Item(catalogNumber: 64542, description: "Bread", price: 2.99).save()
        new Item(catalogNumber: 98753, description: "32 pack of water", price: 1.99).save()
        new Item(catalogNumber: 45217, description: "Rotisserie Chicken", price: 8.99).save()
    }
    def destroy = {
    }
}
