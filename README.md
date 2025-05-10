
# 🛒Online Shopping Database Design
The goal of this project is to create a well-structure relational database for a real-world use case using only MySQL.

# 📝Online Shopping Store Overview
A database model for an online shopping system must be able to store information about the customers who register on the site and place orders. It must also store information about the products available for purchase, indicating price and stock data for each product. Customers must be able to have a shopping cart, where the products they choose from the catalog are stored before the customer is ready to place their order. 

A shipping method is crucial for timely shipment of products. When the customer confirms an order, the data model must be able to record the order data as well as payment and shipping information provided by the customer.

# 🛠Conceptual Design
To outline a conceptual database model for an online shopping system, the first thing to do is to identify the entities involved in the system and their attributes:

* **Address**: This entity contains address information for customers and also shipping addresses selected by the customer.
* **Customer**: This entity represents the customers who create an account to place orders on the online shopping platform.
* **Product**: Represents the set of products available for purchase on the platform.
* **Category**: Categories in which the products are grouped.
* **Order**: Product orders placed by customers.
* **Order_item**: Each item that is part of an order.
* **Payment**: The payment made by the customer once the order is completed.
* **Shipment**: Shipping information associated with an order, including delivery address and tracking information.
* **Cart**: The customer’s virtual basket or shopping cart, which stores items before they are purchased and become part of an order.

# 🔑Relationship Between Entities
The relationships between the entities are as follows:

* A customer can place several orders. Therefore, between **Customer** and **Order** there must be a **one-to-many relationship**.
* An order can contain one or several items, each of which represents a single product - **(One-to-many relationship)**. **Order_Item** is a dependent entity of **Order**, since it has no reason to exist if an order does not exist. In addition, **Order_Item** is related to **Product** through a **one-to-many relationship**: each Order_Item is related to one Product, and a Product can be related to multiple Order_item
* An **order** is associated with one **payment** and one **shipment**, but each payment and each shipment can include multiple orders. For this reason, there are **one-to-many relationships** between **Payment** and **Order** and between **Shipment** and **Order**.
* A product can belong to a single category: there is a **one-to-many relationship** between **Product** and **Category**.
* The shopping **cart** is a dependent entities of **Customer**. Each instance of Cart is related to a product, so both entities have **many-to-one relationships** with **Product**.

# ER Diagram and Attributes
<img width="500" alt="OnlineStoreDB_ERD" src="https://github.com/user-attachments/assets/e499e38f-c5aa-4670-a7b5-43e0c802e2c5" />



# 🤝🏿Contributions
* Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are greatly appreciated.

* If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement". Don't forget to give the project a star! Thanks again!

* **Fork the Project**:
- Create your Feature Branch (*git checkout -b feature/AmazingFeature*)
- Commit your Changes (*git commit -m 'Add some AmazingFeature'*)
- Push to the Branch (*git push origin feature/AmazingFeature*)
- Open a Pull Request

---
>Small disciplines repeated with consistency every day lead to great achievements gained slowly over time. 
- John Maxwell 
