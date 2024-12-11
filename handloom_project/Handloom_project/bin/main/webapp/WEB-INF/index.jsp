<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Handloom Store</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <div class="logo">
            <h1>Handloom Haven</h1>
        </div>
        <nav>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="products.html">Products</a></li>
                <li><a href="cart.html">Cart (<span id="cart-count">0</span>)</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <h2>Featured Handloom Products</h2>
        <div class="products">
            <div class="product-card" data-id="1">
                <img src="img/img1.jpeg" alt="Handloom Product 1">
                <h3>Handloom Saree</h3>
                <p>$40.00</p>
                <button class="add-to-cart">Add to Cart</button>
            </div>
            <div class="product-card" data-id="2">
                <img src="img/img2.jpeg" alt="Handloom Product 2">
                <h3>Handloom PillowCases</h3>
                <p>$25.00</p>
                <button class="add-to-cart">Add to Cart</button>
            </div>
            <!-- Add more products here -->
        </div>
    </main>

    <footer>
        <p>&copy; 2024 Handloom Haven. All Rights Reserved.</p>
    </footer>

    <script src="script.js"></script>
</body>
</html>
