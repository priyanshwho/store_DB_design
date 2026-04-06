customer [icon: user, color: blue] {
  customer_id string PK
  full_name string
  email string
  phone string
  address string
  pincode int
}

product[icon:d365-product-insights,color:yellow]{
 product_id string PK
  name string
  price int
  category string
  size string
  color string
  type thrifted handmade
  description string

}

THRIFTED[icon:suitcase,color:green]{
  thrifted_id string PK
  product_id string FK
  condition string
  avaibility bool
}

HANDMADE_PRODUCT[icon:gcp-real-world-insights,color:red]{
  handmade_id string PK
  product_id string FK
  quantity_available int
}
order {
  order_id string PK
  customer_id string FK
  order_date date
  order_status pending confirmed shipped delivered cancelled
}

order_item[icon:box, color:brown]{
   order_item_id string PK
  order_id string FK
  product_id string FK
quantity int
  price int
}
payment[icon:money,color:greeb]{
payment_id string PK
order_id string FK
payment_method UPI, COD, Credit Card
payment_status pending  paid failed
payment_date date
}

SHIPPING[icon:traffic-cone]{
shipping_id string PK
order_id string FK
shipping_status preparing shipped  delivered
tracking_id string
delivery_date date
}

order.customer_id > customer.customer_id

order_item.order_id > order.order_id

order_item.product_id > product.product_id

thrifted_product.product_id > product.product_id

handmade_product.product_id > product.product_id

payment.order_id > order.order_id

shipping.order_id > order.order_id