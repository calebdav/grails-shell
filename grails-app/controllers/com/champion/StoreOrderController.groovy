package com.champion

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class StoreOrderController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond StoreOrder.list(params), model:[storeOrderCount: StoreOrder.count()]
    }

    def show(StoreOrder storeOrder) {
        respond storeOrder
    }

    def create() {
        respond new StoreOrder(params)
    }

    @Transactional
    def save(StoreOrder storeOrder) {
        if (storeOrder == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (storeOrder.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond storeOrder.errors, view:'create'
            return
        }

        storeOrder.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'storeOrder.label', default: 'StoreOrder'), storeOrder.id])
                redirect storeOrder
            }
            '*' { respond storeOrder, [status: CREATED] }
        }
    }

    def edit(StoreOrder storeOrder) {
        respond storeOrder
    }

    @Transactional
    def update(StoreOrder storeOrder) {
        if (storeOrder == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (storeOrder.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond storeOrder.errors, view:'edit'
            return
        }

        storeOrder.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'storeOrder.label', default: 'StoreOrder'), storeOrder.id])
                redirect storeOrder
            }
            '*'{ respond storeOrder, [status: OK] }
        }
    }

    @Transactional
    def delete(StoreOrder storeOrder) {

        if (storeOrder == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        storeOrder.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'storeOrder.label', default: 'StoreOrder'), storeOrder.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'storeOrder.label', default: 'StoreOrder'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
