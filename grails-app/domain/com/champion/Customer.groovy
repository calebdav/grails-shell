package com.champion

class Customer {
    String name
    String address
    String city
    String state
    String zip
    String phoneNumber
    Date dob

    String getName() {
        return name
    }

    static constraints = {
        name()
        address()
        city()
        state(minSize: 2)
        zip(size:5..10)
        phoneNumber()
        dob(max: new Date())
    }

    @Override
    public String toString() {
        return name;
    }
}
