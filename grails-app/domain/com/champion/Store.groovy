package com.champion

class Store {
    String name
    String address
    String city
    String state
    String zip
    String phoneNumber
    String itemType

    String getName() {
        return name
    }

    static constraints = {
        name()
        itemType()
        address()
        city()
        state(minSize: 2)
        zip(size:5..10)
        phoneNumber()
    }

    @Override
    public String toString() {
        return name;
    }
}
