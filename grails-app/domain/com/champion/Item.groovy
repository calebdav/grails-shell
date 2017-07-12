package com.champion

class Item {
    Long catalogNumber
    String description
    Float price

    static constraints = {
        description()
        catalogNumber()
        price(min: 0F)
    }

    @Override
    public String toString() {
        return description;
    }
}
