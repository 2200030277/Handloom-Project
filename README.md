# HANDLOOM PROJECT
Developed a dynamic eCommerce platform dedicated to handloom products, combining cultural craftsmanship with modern technology. The frontend leverages JSP (JavaServer Pages) and CSS for an interactive and visually appealing user interface, while the backend is powered by Servlets and Java running on Apache Tomcat, with MySQL serving as the database. The platform offers essential eCommerce features such as user authentication, a product catalog, and cart management, all optimized for a seamless shopping experience. With a focus on both functionality and cultural aesthetics, the application bridges the gap between traditional handloom products and modern online shopping.
### 1. Setting up the Environment
Eclipse IDE: The project is set up in Eclipse IDE as a Dynamic Web Project. This configuration supports the use of servlets and JSPs.
Tomcat Server: Configured Apache Tomcat v9.0 as the server for running the project. Tomcat has been integrated with Eclipse for seamless deployment and execution.
MySQL Database: A MySQL database connection has been established using JDBC in Eclipse. The database contains product information, and the connection details have been successfully tested using the DBConnection.java class.
### 2. Database Connection
[DBHelper.java](HandloomEcommerce/src/main/java/com/handloom/util/DBHelper.java): Created a class to manage the connection to the MySQL database. The connection parameters (URL, username, and password) are specified here, and the connection is established using the DriverManager.getConnection() method.
### 3.JSP Pages
 [index.jsp](HandloomEcommerce/src/main/webapp/index.jsp): This page displays a list of products from the database. It also handles adding products to the cart and buying products. The list of products is fetched from the ProductDao class, and the cart list is retrieved from the session.
 
[signup.jsp](HandloomEcommerce/src/main/webapp/signup.jsp): This page displays the login form. If the user is already logged in (authenticated), they are redirected to index.jsp. The cart list is also checked and passed to the page if it exists in the session.

[orders.jsp](HandloomEcommerce/src/main/webapp/orders.jsp): This page displays a list of orders for a logged-in user. It fetches orders from the OrderDao class and displays relevant details like the date, name, category, quantity, and price of each order. It also provides a button to cancel an order.

[checkout.jsp](HandloomEcommerce/src/main/webapp/checkout.jsp): This page displays the items in the user's cart and calculates the total price. If the cart is not empty, the user can proceed with placing the order by submitting the form.

[cart.jsp](HandloomEcommerce/src/main/webapp/cart.jsp): This page shows the user's cart with the total price and provides the option to proceed to checkout. The cart items are fetched from the session and displayed in a table, with options to increment or decrement the quantities.
### 4.Servlet code
[AddToCartServlet.java](HandloomEcommerce/src/main/java/com/handloom/servlet/AddToCartServlet.java):Responsible for adding items to the shopping cart. It checks if an item is already in the cart and prevents duplicates.

[CartServlet.java](HandloomEcommerce/src/main/java/com/handloom/servlet/CartServlet.java):Manages the cart items by adding products from the request to the cart session.

[CheckOutServlet.java](HandloomEcommerce/src/main/java/com/handloom/servlet/CheckOutServlet.java): Handles the checkout process, including saving orders in the database

[LoginServlet.java](HandloomEcommerce/src/main/java/com/handloom/servlet/LoginServlet.java):  Handles user login by validating email and password.

[OrderNowServlet.java](HandloomEcommerce/src/main/java/com/handloom/servlet/OrderNowServlet.java): Similar to [CheckOutServlet.java](HandloomEcommerce/src/main/java/com/handloom/servlet/CheckOutServlet.java)  but places an order immediately for a specific product (without going through the cart).

[QuantityIncDecServlet.java](HandloomEcommerce/src/main/java/com/handloom/servlet/QuantityIncDecServlet.java): Allows the user to increment or decrement the quantity of items in the cart.
[RemoveFeomCartServlet.java](HandloomEcommerce/src/main/java/com/handloom/servlet/RemoveFromCartServlet.java) : To Delete items from Cart
### 5.Dao codes
The DAO pattern is used to abstract and encapsulate all interactions with the database, providing a clean interface for the rest of the application to access and manipulate data.

[OrderDao.java](HandloomEcommerce/src/main/java/com/handloom/dao/OrderDao.java)
[ProductDao.java](HandloomEcommerce/src/main/java/com/handloom/dao/ProductDao.java)
[UserDao.java](HandloomEcommerce/src/main/java/com/handloom/dao/UserDao.java)
