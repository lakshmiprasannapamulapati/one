<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, user-scalable=yes">
  <title>NexusShop · modern e‑commerce</title>
  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', -apple-system, system-ui, sans-serif;
      background: #f9fafc;
      color: #0b1a2f;
      line-height: 1.5;
      padding: 0 12px;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 12px;
    }

    /* header – softer, more spacious */
    header {
      background: rgba(255, 255, 255, 0.85);
      backdrop-filter: blur(8px);
      -webkit-backdrop-filter: blur(8px);
      border-bottom: 1px solid rgba(0,0,0,0.03);
      padding: 8px 0;
      position: sticky;
      top: 0;
      z-index: 50;
      border-radius: 0 0 24px 24px;
      box-shadow: 0 4px 20px rgba(0,0,0,0.02);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 8px 16px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-weight: 700;
      font-size: 1.35rem;
      letter-spacing: -0.02em;
    }
    .brand .accent {
      color: #2b7fff;
      background: #e9f0ff;
      padding: 0 6px;
      border-radius: 40px;
    }

    .nav-links {
      display: flex;
      gap: 6px 14px;
      flex-wrap: wrap;
      align-items: center;
    }
    .nav-links a {
      text-decoration: none;
      color: #1f2a44;
      font-weight: 500;
      font-size: 0.95rem;
      padding: 6px 10px;
      border-radius: 40px;
      transition: 0.15s;
      display: inline-flex;
      align-items: center;
      gap: 6px;
    }
    .nav-links a:hover {
      background: #eef2f7;
      color: #0057e0;
    }
    .nav-links a i {
      font-size: 1rem;
      opacity: 0.7;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 8px 14px;
      flex-wrap: wrap;
    }

    .search-wrapper {
      display: flex;
      align-items: center;
      background: #ffffff;
      border: 1px solid #e6ecf3;
      border-radius: 60px;
      padding: 4px 8px 4px 16px;
      transition: 0.2s;
      box-shadow: 0 2px 6px rgba(0,0,0,0.02);
    }
    .search-wrapper:focus-within {
      border-color: #2b7fff;
      box-shadow: 0 4px 12px rgba(43, 127, 255, 0.12);
    }
    .search-wrapper input {
      border: none;
      background: transparent;
      padding: 8px 4px;
      font-size: 0.9rem;
      min-width: 160px;
      outline: none;
      color: #0b1a2f;
    }
    .search-wrapper button {
      background: transparent;
      border: none;
      padding: 8px 10px;
      color: #4a5b74;
      cursor: pointer;
      border-radius: 40px;
      transition: 0.15s;
    }
    .search-wrapper button:hover {
      background: #eef2f7;
      color: #0057e0;
    }

    .cart-btn {
      position: relative;
      display: inline-flex;
      align-items: center;
      gap: 6px;
      background: #ffffff;
      padding: 6px 14px 6px 10px;
      border-radius: 40px;
      border: 1px solid #e6ecf3;
      font-weight: 500;
      color: #0b1a2f;
      text-decoration: none;
      transition: 0.15s;
    }
    .cart-btn:hover {
      background: #f5f8ff;
      border-color: #b8cbe0;
    }
    .cart-badge {
      background: #2b7fff;
      color: white;
      border-radius: 30px;
      padding: 0 8px;
      font-size: 0.7rem;
      font-weight: 600;
      line-height: 1.6;
      min-width: 20px;
      text-align: center;
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      font-size: 1.6rem;
      padding: 0 6px;
      color: #1f2a44;
      cursor: pointer;
    }

    /* hero – friendly, soft */
    .hero {
      background: linear-gradient(135deg, #eef6ff 0%, #f0f4fe 100%);
      border-radius: 32px;
      padding: 40px 28px;
      margin: 24px 0 32px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 24px;
      box-shadow: inset 0 -2px 0 rgba(0,0,0,0.02);
    }
    .hero-content {
      flex: 1 1 280px;
    }
    .hero h1 {
      font-size: 2.1rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      line-height: 1.2;
      color: #0b1a2f;
    }
    .hero h1 span {
      color: #2b7fff;
      background: linear-gradient(145deg, #1a6aff, #0050d0);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .hero p {
      font-size: 1rem;
      color: #2c3e5a;
      max-width: 480px;
      margin: 12px 0 18px;
    }
    .hero-actions {
      display: flex;
      flex-wrap: wrap;
      gap: 12px;
    }
    .btn {
      border: none;
      padding: 10px 24px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.95rem;
      display: inline-flex;
      align-items: center;
      gap: 8px;
      cursor: pointer;
      transition: 0.2s;
      background: white;
      color: #0b1a2f;
      box-shadow: 0 2px 6px rgba(0,0,0,0.02);
      border: 1px solid #dce3ed;
    }
    .btn-primary {
      background: #0b1a2f;
      color: white;
      border: 1px solid #0b1a2f;
      box-shadow: 0 6px 14px rgba(11, 26, 47, 0.08);
    }
    .btn-primary:hover {
      background: #1f3450;
      transform: translateY(-2px);
      box-shadow: 0 12px 24px rgba(11, 26, 47, 0.12);
    }
    .btn-outline {
      background: transparent;
      border: 1px solid #b8cbe0;
    }
    .btn-outline:hover {
      background: #f0f4ff;
      border-color: #2b7fff;
    }
    .hero-image {
      flex: 0 0 180px;
      text-align: center;
    }
    .hero-image i {
      font-size: 6rem;
      color: #2b7fff;
      opacity: 0.3;
      filter: drop-shadow(0 12px 24px rgba(43,127,255,0.10));
    }

    /* section titles */
    .section-title {
      font-size: 1.6rem;
      font-weight: 700;
      letter-spacing: -0.01em;
      margin-bottom: 4px;
    }
    .section-sub {
      color: #4e637f;
      margin-bottom: 20px;
    }

    /* category grid – user friendly */
    .category-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(100px, 1fr));
      gap: 14px;
      margin: 16px 0 32px;
    }
    .cat-card {
      background: white;
      border-radius: 24px;
      padding: 18px 6px;
      text-align: center;
      box-shadow: 0 4px 12px rgba(0,0,0,0.02);
      border: 1px solid #f0f3f8;
      transition: 0.18s;
      cursor: pointer;
    }
    .cat-card:hover {
      transform: translateY(-5px);
      border-color: #cbd8e9;
      box-shadow: 0 12px 28px rgba(0,0,0,0.04);
    }
    .cat-card i {
      font-size: 1.8rem;
      color: #2b7fff;
      background: #e9f0ff;
      padding: 10px;
      border-radius: 60px;
      margin-bottom: 6px;
    }
    .cat-card span {
      display: block;
      font-weight: 500;
      font-size: 0.85rem;
    }

    /* product grid – clean cards */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(170px, 1fr));
      gap: 20px;
      margin: 16px 0 32px;
    }
    .product-card {
      background: white;
      border-radius: 24px;
      padding: 16px 12px 14px;
      box-shadow: 0 4px 16px rgba(0,0,0,0.02);
      border: 1px solid #eef2f8;
      transition: 0.2s;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      border-color: #d0ddee;
      box-shadow: 0 12px 28px rgba(0,0,0,0.04);
      transform: translateY(-3px);
    }
    .product-img {
      width: 100%;
      aspect-ratio: 1/1;
      object-fit: cover;
      border-radius: 20px;
      background: #f3f7fd;
      margin-bottom: 10px;
    }
    .product-title {
      font-weight: 600;
      font-size: 0.95rem;
      margin-bottom: 4px;
    }
    .product-meta {
      color: #5a6f8a;
      font-size: 0.75rem;
      text-transform: uppercase;
      letter-spacing: 0.02em;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 8px;
      margin: 6px 0 12px;
      flex-wrap: wrap;
    }
    .price-current {
      font-weight: 700;
      font-size: 1.2rem;
    }
    .price-old {
      text-decoration: line-through;
      color: #8a9bb0;
      font-size: 0.8rem;
    }
    .product-actions {
      display: flex;
      gap: 8px;
      margin-top: auto;
    }
    .product-actions .btn {
      flex: 1;
      justify-content: center;
      padding: 8px 6px;
      font-size: 0.8rem;
      border-radius: 40px;
    }
    .wish-btn {
      background: transparent;
      border: 1px solid #dce3ed;
      padding: 8px 10px;
      border-radius: 40px;
      cursor: pointer;
      transition: 0.15s;
    }
    .wish-btn:hover {
      background: #fff0f0;
      border-color: #ff7a7a;
      color: #d63a3a;
    }

    /* flash sale */
    .deal-card {
      background: white;
      border-radius: 32px;
      padding: 20px 24px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 24px;
      border: 1px solid #e6ecf3;
      margin: 16px 0 32px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.02);
    }
    .deal-info {
      flex: 1 1 200px;
    }
    .deal-info h3 {
      font-size: 1.5rem;
    }
    .deal-timer {
      display: flex;
      gap: 10px;
      margin: 12px 0;
    }
    .time-box {
      background: #0b1a2f;
      color: white;
      padding: 8px 12px;
      border-radius: 16px;
      min-width: 56px;
      text-align: center;
      font-weight: 600;
    }
    .time-box span {
      display: block;
      font-size: 0.6rem;
      font-weight: 400;
      opacity: 0.7;
    }
    .deal-price {
      display: flex;
      align-items: center;
      gap: 12px;
      flex-wrap: wrap;
    }
    .deal-price .current {
      font-size: 1.8rem;
      font-weight: 700;
    }
    .deal-price .old {
      color: #8a9bb0;
      text-decoration: line-through;
    }
    .deal-img {
      flex: 0 0 120px;
      text-align: center;
    }
    .deal-img i {
      font-size: 4.5rem;
      color: #2b7fff;
      opacity: 0.2;
    }

    /* testimonials – friendly */
    .testimonial-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
      gap: 20px;
      margin: 16px 0 24px;
    }
    .testimonial-card {
      background: white;
      border-radius: 24px;
      padding: 18px 16px;
      border: 1px solid #eef2f8;
      box-shadow: 0 4px 8px rgba(0,0,0,0.01);
    }
    .testimonial-card .stars {
      color: #f7b731;
      letter-spacing: 2px;
    }
    .testimonial-card p {
      font-size: 0.9rem;
      color: #1f2a44;
      margin: 8px 0;
    }
    .testimonial-card .author {
      font-weight: 600;
      font-size: 0.85rem;
    }

    /* newsletter – soft */
    .newsletter-box {
      background: #0b1a2f;
      color: white;
      border-radius: 32px;
      padding: 32px 24px;
      text-align: center;
      margin: 24px 0 16px;
    }
    .newsletter-box h3 {
      font-size: 1.6rem;
      font-weight: 600;
    }
    .newsletter-box p {
      opacity: 0.8;
      margin-bottom: 16px;
    }
    .newsletter-form {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 8px;
    }
    .newsletter-form input {
      padding: 10px 20px;
      border-radius: 60px;
      border: none;
      min-width: 200px;
      flex: 1 1 180px;
      font-size: 0.9rem;
    }
    .newsletter-form .btn {
      background: white;
      color: #0b1a2f;
      border: none;
    }
    .newsletter-form .btn:hover {
      background: #e9f0ff;
    }

    footer {
      margin-top: 32px;
      padding: 28px 0 16px;
      border-top: 1px solid #e6ecf3;
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 20px;
      color: #3c5170;
    }
    .footer-links {
      display: flex;
      gap: 24px;
      flex-wrap: wrap;
    }
    .footer-links a {
      color: #3c5170;
      text-decoration: none;
      font-size: 0.85rem;
    }
    .footer-links a:hover {
      color: #0b1a2f;
    }

    /* responsive */
    @media (max-width: 700px) {
      .mobile-toggle {
        display: block;
      }
      .nav-links {
        display: none;
      }
      .nav-links.open {
        display: flex;
        flex-direction: column;
        align-items: stretch;
        width: 100%;
        background: white;
        padding: 12px 0;
        border-radius: 24px;
        margin-top: 8px;
        border: 1px solid #e6ecf3;
      }
      .nav-links.open a {
        padding: 10px 16px;
      }
      .search-wrapper input {
        min-width: 100px;
      }
      .hero h1 {
        font-size: 1.7rem;
      }
      .product-grid {
        grid-template-columns: repeat(auto-fill, minmax(140px, 1fr));
      }
    }

    @media (max-width: 480px) {
      .header-actions .search-wrapper {
        width: 100%;
      }
      .header-actions {
        width: 100%;
        justify-content: space-between;
      }
      .hero-image {
        flex: 0 0 100%;
      }
    }

    /* utilities */
    .mt-1 { margin-top: 8px; }
    .mb-1 { margin-bottom: 8px; }
    .gap-2 { gap: 8px; }
    .flex { display: flex; align-items: center; }
    .text-muted { color: #4e637f; }
    .badge {
      background: #dce3ed;
      padding: 2px 10px;
      border-radius: 40px;
      font-size: 0.7rem;
      font-weight: 600;
    }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div class="flex gap-2">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
      <div class="brand">Nexus<span class="accent">Shop</span></div>
    </div>

    <nav class="nav-links" id="navLinks">
      <a href="#"><i class="fas fa-home"></i> Home</a>
      <a href="#categories"><i class="fas fa-th"></i> Categories</a>
      <a href="#products"><i class="fas fa-fire"></i> Trending</a>
      <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
      <a href="#testimonials"><i class="fas fa-star"></i> Reviews</a>
    </nav>

    <div class="header-actions">
      <div class="search-wrapper">
        <input type="text" id="searchInput" placeholder="Search...">
        <button id="searchBtn"><i class="fas fa-search"></i></button>
      </div>
      <a href="#" class="cart-btn" id="cartBtn">
        <i class="fas fa-shopping-cart"></i> Cart
        <span class="cart-badge" id="cartCount">0</span>
      </a>
    </div>
  </div>
  <!-- mobile nav -->
  <div class="container" id="mobileNavContainer" style="display:none;"></div>
</header>

<main>
  <!-- hero -->
  <div class="container hero">
    <div class="hero-content">
      <h1>New <span>Winter</span> Collection</h1>
      <p>Premium picks in fashion, tech & accessories. Free shipping on orders over $50.</p>
      <div class="hero-actions">
        <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-arrow-right"></i> Shop now</button>
        <button class="btn btn-outline" id="exploreDealsBtn"><i class="fas fa-gift"></i> Explore deals</button>
      </div>
    </div>
    <div class="hero-image">
      <i class="fas fa-bag-shopping"></i>
    </div>
  </div>

  <!-- categories -->
  <div class="container" id="categories">
    <div class="section-title">Shop by Category</div>
    <div class="section-sub">Browse curated collections</div>
    <div class="category-grid" id="categoryGrid"></div>
  </div>

  <!-- products -->
  <div class="container" id="products">
    <div class="section-title">Trending Products</div>
    <div class="section-sub">Popular picks based on recent activity</div>
    <div class="product-grid" id="productGrid"></div>
  </div>

  <!-- deal -->
  <div class="container" id="deals">
    <div class="section-title">🔥 Flash Sale</div>
    <div class="section-sub">Limited-time offers</div>
    <div class="deal-card">
      <div class="deal-info">
        <h3>MacBook Air M2</h3>
        <div class="text-muted" style="font-size:0.9rem;">Ultra‑thin, next‑gen performance</div>
        <div class="deal-timer" id="dealTimer">
          <div class="time-box"><span id="dealDays">0</span> <span>d</span></div>
          <div class="time-box"><span id="dealHours">00</span> <span>h</span></div>
          <div class="time-box"><span id="dealMinutes">00</span> <span>m</span></div>
          <div class="time-box"><span id="dealSeconds">00</span> <span>s</span></div>
        </div>
        <div class="deal-price">
          <span class="current">$999</span>
          <span class="old">$1,199</span>
          <span class="badge">-17%</span>
        </div>
        <div style="margin-top:10px;"><span class="badge" style="background:#ff4757;color:white;">Only 12 left</span></div>
        <button class="btn btn-primary" id="buyDealBtn" style="margin-top:12px;"><i class="fas fa-bolt"></i> Buy now</button>
      </div>
      <div class="deal-img">
        <i class="fas fa-laptop"></i>
      </div>
    </div>
  </div>

  <!-- testimonials -->
  <div class="container" id="testimonials">
    <div class="section-title">What our customers say</div>
    <div class="section-sub">Real reviews from verified buyers</div>
    <div class="testimonial-grid" id="testimonialGrid"></div>
  </div>

  <!-- newsletter -->
  <div class="container">
    <div class="newsletter-box">
      <h3>Stay in the loop</h3>
      <p>Subscribe for exclusive offers & new arrivals</p>
      <form class="newsletter-form" id="newsletterForm">
        <input type="email" id="newsletterEmail" placeholder="Enter your email" required>
        <button class="btn" id="subscribeBtn">Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top:10px; font-size:0.9rem; display:none;"></div>
    </div>
  </div>
</main>

<footer>
  <div>© 2026 NexusShop. All rights reserved.</div>
  <div class="footer-links">
    <a href="#">About</a>
    <a href="#">Careers</a>
    <a href="#">Help</a>
    <a href="#">Privacy</a>
  </div>
</footer>

<script>
  (function() {
    // ---------- DATA ----------
    const categories = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-screen' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-shirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const products = [
      { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?w=200&h=200&fit=crop&auto=format', category: 'phones' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=200&h=200&fit=crop&auto=format', category: 'laptops' },
      { id: 3, title: 'Apple Watch S8', price: 349, oldPrice: 399, rating: 5, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?w=200&h=200&fit=crop&auto=format', category: 'accessories' },
      { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?w=200&h=200&fit=crop&auto=format', category: 'footwear' },
      { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?w=200&h=200&fit=crop&auto=format', category: 'gadgets' },
      { id: 6, title: 'Chanel No.5', price: 120, rating: 5, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?w=200&h=200&fit=crop&auto=format', category: 'accessories' },
      { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?w=200&h=200&fit=crop&auto=format', category: 'accessories' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?w=200&h=200&fit=crop&auto=format', category: 'gadgets' }
    ];

    // ---------- STATE ----------
    let cartCount = 0;
    const cartEl = document.getElementById('cartCount');
    const productGrid = document.getElementById('productGrid');
    const categoryGrid = document.getElementById('categoryGrid');
    const searchInput = document.getElementById('searchInput');
    const searchBtn = document.getElementById('searchBtn');

    // ---------- RENDER ----------
    function renderCategories() {
      categoryGrid.innerHTML = categories.map(c => `
        <div class="cat-card" data-cat="${c.id}">
          <i class="fas ${c.icon}"></i>
          <span>${c.name}</span>
        </div>
      `).join('');
      // click filter
      document.querySelectorAll('.cat-card').forEach(el => {
        el.addEventListener('click', function() {
          const cat = this.dataset.cat;
          searchInput.value = cat;
          filterProducts(cat);
        });
      });
    }

    function renderProducts(list) {
      productGrid.innerHTML = list.map(p => {
        const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
        return `
          <div class="product-card" data-id="${p.id}">
            <img src="${p.img}" alt="${p.title}" class="product-img" loading="lazy">
            <div class="product-title">${p.title}</div>
            <div class="product-meta">${p.category}</div>
            <div class="price-row">
              <span class="price-current">$${p.price.toLocaleString()}</span>
              ${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}
            </div>
            <div style="font-size:0.75rem; color:#f7b731;">${stars}</div>
            <div class="product-actions">
              <button class="btn btn-primary add-cart" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
              <button class="wish-btn"><i class="far fa-heart"></i></button>
            </div>
          </div>
        `;
      }).join('');

      // add to cart listeners
      document.querySelectorAll('.add-cart').forEach(btn => {
        btn.addEventListener('click', function(e) {
          e.stopPropagation();
          const id = Number(this.dataset.id);
          addToCart(id);
        });
      });
    }

    function filterProducts(query) {
      const q = String(query || '').trim().toLowerCase();
      if (!q) { renderProducts(products); return; }
      const filtered = products.filter(p => 
        p.title.toLowerCase().includes(q) || 
        p.category.toLowerCase().includes(q)
      );
      renderProducts(filtered);
    }

    // ---------- CART ----------
    function addToCart(id) {
      cartCount++;
      cartEl.textContent = cartCount;
      const btn = document.querySelector(`.add-cart[data-id="${id}"]`);
      if (btn) {
        const orig = btn.innerHTML;
        btn.innerHTML = '✓ Added';
        btn.disabled = true;
        setTimeout(() => {
          btn.innerHTML = orig;
          btn.disabled = false;
        }, 1000);
      }
    }

    // ---------- DEAL TIMER ----------
    function startDealTimer() {
      const now = new Date();
      const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000); // ~24.6h
      function tick() {
        const diff = target - new Date();
        if (diff <= 0) { clearInterval(timer); return; }
        const days = Math.floor(diff / (24*3600*1000));
        const hours = Math.floor((diff % (24*3600*1000)) / (3600*1000));
        const mins = Math.floor((diff % (3600*1000)) / (60*1000));
        const secs = Math.floor((diff % (60*1000)) / 1000);
        document.getElementById('dealDays').textContent = days;
        document.getElementById('dealHours').textContent = String(hours).padStart(2,'0');
        document.getElementById('dealMinutes').textContent = String(mins).padStart(2,'0');
        document.getElementById('dealSeconds').textContent = String(secs).padStart(2,'0');
      }
      tick();
      const timer = setInterval(tick, 1000);
    }

    // ---------- TESTIMONIALS ----------
    function renderTestimonials() {
      const data = [
        { name: 'Ava Martin', text: 'Fast shipping and excellent customer support. The product exceeded my expectations!', stars: 5 },
        { name: 'Michael Lee', text: 'Great selection and smooth checkout. Will definitely shop again.', stars: 4 },
        { name: 'Sophia Chen', text: 'Love the quality and the deals! My new favorite store.', stars: 5 }
      ];
      const grid = document.getElementById('testimonialGrid');
      grid.innerHTML = data.map(t => `
        <div class="testimonial-card">
          <div class="stars">${'★'.repeat(t.stars)}${'☆'.repeat(5-t.stars)}</div>
          <p>“${t.text}”</p>
          <div class="author">— ${t.name}</div>
        </div>
      `).join('');
    }

    // ---------- MOBILE TOGGLE ----------
    const mobileToggle = document.getElementById('mobileToggle');
    const navLinks = document.getElementById('navLinks');
    mobileToggle.addEventListener('click', function() {
      navLinks.classList.toggle('open');
    });

    // ---------- SEARCH ----------
    searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') filterProducts(e.target.value); });

    // ---------- UI ACTIONS ----------
    document.getElementById('shopNowBtn').addEventListener('click', () => {
      document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
    });
    document.getElementById('exploreDealsBtn').addEventListener('click', () => {
      document.getElementById('deals').scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('buyDealBtn').addEventListener('click', () => {
      cartCount += 1;
      cartEl.textContent = cartCount;
      alert('Deal added to cart (demo).');
    });

    // ---------- NEWSLETTER ----------
    document.getElementById('newsletterForm').addEventListener('submit', function(e) {
      e.preventDefault();
      const email
        header {
            position: sticky;
            top: 0;
            z-index: 40;
            background: linear-gradient(180deg, rgba(255, 255, 255, 0.98), rgba(255, 255, 255, 0.95));
            border-bottom: 1px solid rgba(10, 37, 64, 0.04);
            backdrop-filter: blur(4px);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            padding: 14px 0;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 12px;
            font-family: Poppins, sans-serif;
            font-weight: 700;
            font-size: 20px;
            color: var(--primary);
        }

        .brand .accent {
            color: var(--accent)
        }

        nav.main-nav {
            display: flex;
            align-items: center;
            gap: 18px;
        }

        nav.main-nav ul {
            display: flex;
            gap: 8px;
            list-style: none;
            margin: 0;
            padding: 0;
            align-items: center;
        }

        nav.main-nav li a {
            display: flex;
            gap: 8px;
            align-items: center;
            padding: 8px 10px;
            border-radius: 8px;
            color: var(--primary);
            font-weight: 500;
        }

        nav.main-nav li a:hover {
            background: var(--surface);
            color: var(--accent)
        }

        .search {
            display: flex;
            align-items: center;
            gap: 8px;
            background: var(--surface);
            padding: 8px 12px;
            border-radius: 999px;
            min-width: 240px;
        }

        .search input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            font-size: 14px;
        }

        .icon-btn {
            background: transparent;
            color: var(--primary);
            border: 0;
            cursor: pointer;
            color: var(--primary);
            font-size: 16px;
            color: var(--primary);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .cart {
            position: relative;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 6px 8px;
            border-radius: 8px;
        }

        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--accent);
            color: white;
            font-size: 11px;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: inline-grid;
            place-items: center;
        }

        .mobile-toggle {
            display: none;
            border: 0;
            background: transparent;
            font-size: 20px;
            cursor: pointer;
        }

        /* Hero */
        .hero {
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            background:
                linear-gradient(180deg, rgba(10, 37, 64, 0.6), rgba(10, 37, 64, 0.6)),
                url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
            color: white;
            min-height: 420px;
            padding: 56px 20px;
            border-bottom-left-radius: var(--radius);
            border-bottom-right-radius: var(--radius);
        }

        .hero h1 {
            font-family: Poppins;
            font-size: 40px;
            margin: 0 0 12px;
            letter-spacing: -0.02em;
        }

        .hero p {
            margin: 0 0 22px;
            opacity: 0.95;
            max-width: 820px;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 10px 18px;
            border-radius: 999px;
            font-weight: 600;
            cursor: pointer;
            border: 0;
        }

        .btn-primary {
            background: var(--accent);
            color: #042233;
        }

        .btn-ghost {
            background: transparent;
            border: 2px solid rgba(255, 255, 255, 0.18);
            color: white;
        }

        /* Sections */
        .section {
            padding: 48px 0;
        }

        .section .title {
            text-align: center;
            margin-bottom: 18px;
        }

        .grid {
            display: grid;
            gap: 20px;
        }

        /* Categories */
        .categories {
            grid-template-columns: repeat(6, 1fr);
        }

        .cat-card {
            background: var(--card);
            border-radius: 12px;
            padding: 18px;
            text-align: center;
            box-shadow: 0 8px 20px rgba(10, 37, 64, 0.04);
            transition: transform .18s ease, box-shadow .18s ease;
        }

        .cat-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 20px 40px rgba(10, 37, 64, 0.06);
        }

        .cat-card .icon {
            font-size: 28px;
            color: var(--accent);
            margin-bottom: 8px;
        }

        .cat-card h4 {
            margin: 6px 0 0;
            font-size: 15px;
        }

        /* Products */
        .products {
            grid-template-columns: repeat(4, 1fr);
        }

        .product {
            background: var(--card);
            border-radius: 12px;
            overflow: hidden;
            display: flex;
            flex-direction: column;
            box-shadow: 0 8px 20px rgba(10, 37, 64, 0.04);
        }

        .product img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            display: block;
        }

        .product-body {
            padding: 12px 14px;
            display: flex;
            flex-direction: column;
            gap: 10px;
            flex: 1;
        }

        .product h5 {
            margin: 0;
            font-size: 15px;
        }

        .price-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 8px;
        }

        .price {
            font-weight: 700;
            color: var(--primary);
        }

        .old-price {
            color: var(--muted);
            text-decoration: line-through;
            font-weight: 500;
            font-size: 13px;
        }

        .rating {
            color: #ffc107;
            font-size: 13px;
        }

        .product-footer {
            padding: 12px;
            display: flex;
            gap: 10px;
        }

        .add-btn {
            flex: 1;
            background: var(--primary);
            color: white;
            border: 0;
            padding: 10px;
            border-radius: 8px;
            cursor: pointer;
            font-weight: 600;
        }

        .wish-btn {
            background: transparent;
            border: 1px solid rgba(10, 37, 64, 0.06);
            padding: 8px;
            border-radius: 8px;
            cursor: pointer;
        }

        /* Deal */
        .deal {
            display: flex;
            gap: 18px;
            background: var(--surface);
            border-radius: 12px;
            overflow: hidden;
            align-items: center;
        }

        .deal img {
            width: 50%;
            height: 320px;
            object-fit: cover;
            display: block;
        }

        .deal .content {
            padding: 28px;
            flex: 1;
        }

        .timer {
            display: flex;
            gap: 12px;
            margin: 18px 0;
        }

        .time-box {
            background: var(--primary);
            color: white;
            padding: 12px 16px;
            border-radius: 8px;
            min-width: 76px;
            text-align: center;
        }

        .deal .price {
            font-size: 26px;
        }

        /* Testimonials */
        .testimonials {
            display: flex;
            gap: 14px;
            overflow-x: auto;
            padding: 12px 4px;
        }

        .testimonial {
            min-width: 320px;
            background: white;
            padding: 18px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(10, 37, 64, 0.04);
        }

        /* Newsletter */
        .newsletter {
            background: var(--primary);
            color: white;
            border-radius: 12px;
            padding: 32px;
            text-align: center;
        }

        .newsletter input {
            padding: 12px 14px;
            border-radius: 999px;
            border: 0;
            width: 320px;
            max-width: 100%;
            margin-right: 8px;
        }

        /* Footer */
        footer {
            margin-top: 24px;
            padding: 36px 0;
            border-top: 1px solid rgba(10, 37, 64, 0.04);
            color: var(--muted);
            font-size: 14px;
        }

        /* Responsive */
        @media (max-width:1200px) {
            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .products {
                grid-template-columns: repeat(3, 1fr);
            }
        }

        @media (max-width:900px) {
            nav.main-nav {
                display: none;
            }

            .mobile-toggle {
                display: inline-block;
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
            }

            .deal img {
                height: 220px;
                width: 40%;
            }
        }

        @media (max-width:600px) {
            .hero h1 {
                font-size: 28px;
            }

            .products {
                grid-template-columns: 1fr;
            }

            .categories {
                grid-template-columns: 1fr;
            }

            .deal {
                flex-direction: column;
            }

            .deal img {
                width: 100%;
                height: 220px;
            }
        }

        /* small utilities */
        .muted {
            color: var(--muted);
        }

        .text-center {
            text-align: center
        }
    </style>
   
</head>

<body>
    <header>
        <div class="container header-inner" role="banner">
            <div style="display:flex;align-items:center;gap:18px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu"><em class="fas fa-bars"></em></button>
                <a class="brand" href="#">
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Primary navigation">
                <ul>
                    <li><a href="#"><em class="fas fa-home"></em> Home</a></li>
                    <li class="has-dropdown" aria-haspopup="true">
                        <a href="#" id="catMenuBtn"><em class="fas fa-th-large"></em> Categories <em class="fas fa-chevron-down" style="font-size:12px;"></em></a>
                    </li>
                    <li><a href="#"><em class="fas fa-fire"></em> Trending</a></li>
                    <li><a href="#deals"><em class="fas fa-tag"></em> Deals</a></li>
                    <li><a href="#about"><em class="fas fa-info-circle"></em> About</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:14px;">
                <div class="search" role="search" aria-label="Product search">
                    <emnput type="search" id="searchInput" placeholder="Search products, categories..." aria-label="Search products" />
                    <button class="icon-btn" id="searchBtn" aria-label="Search"><em class="fas fa-search"></em></button>
                </div>

                <div class="header-actions" role="group" aria-label="Header actions">
                    <a class="icon-btn" title="Account" href="#"><em class="far fa-user"></em></a>
                    <a class="icon-btn" title="Wishlist" href="#"><em class="far fa-heart"></em></a>
                    <a class="cart" href="#" id="cartBtn" title="View cart" aria-label="Cart">
                        <em class="fas fa-shopping-cart"></em>
                        <span class="cart-count" id="cartCount">0</span>
                    </a>
                </div>
            </div>
        </div>

        <!-- Mobile menu (hidden on desktop) -->
        <div id="mobileMenu" style="display:none; background:var(--bg); border-top:1px solid rgba(10,37,64,0.04);">
            <div class="container" style="padding:12px 0;">
                <nav aria-label="Mobile navigation">
                    <ul style="list-style:none;padding:0;margin:0;display:flex;flex-direction:column;gap:8px;">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Categories</a></li>
                        <li><a href="#">Trending</a></li>
                        <li><a href="#deals">Deals</a></li>
                        <li><a href="#about">About</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero -->
        <section class="hero" role="img" aria-label="Hero banner">
            <div class="container">
                <h1>New Winter Collection  Premium Picks</h1>
                <p>Discover the latest trends in fashion, technology and accessories — curated just for you. Enjoy limited-time deals and free shipping on selected items.</p>
                <div>
                    <button class="btn btn-primary" id="shopNow">Shop Now <em class="fas fa-arrow-right"></em></button>
                    <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
                </div>
            </div>
        </section>

        <!-- Categories -->
        <section class="section container" aria-labelledby="cat-title">
            <div class="title" id="cat-title">
                <h2 class="section-title">Shop by Category</h2>
                <p class="muted">Browse through our wide range of products across curated categories.</p>
            </div>

            <div class="grid categories" id="categoriesGrid" aria-live="polite"></div>
        </section>

        <!-- Products -->
        <section class="section container" aria-labelledby="prod-title">
            <div class="title" id="prod-title">
                <h2>Trending Products</h2>
                <p class="muted">Popular picks based on recent activity.</p>
            </div>

            <div class="grid products" id="productsGrid" aria-live="polite"></div>
        </section>

        <!-- Deals -->
        <section id="deals" class="section container" aria-labelledby="deals-title">
            <div class="title" id="deals-title">
                <h2>Flash Sale</h2>
                <p class="muted">Limited-time offers — don't miss out!</p>
            </div>

            <div class="deal" style="align-items:stretch;">
                <emmg src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" alt="Deal product">
                <div class="content">
                    <h3>MacBook Air M2</h3>
                    <p class="muted">Thin, light and powerful — now with M2 performance.</p>

                    <div class="timer" aria-hidden="false">
                        <div class="time-box">
                            <div id="dealDays">0</div>
                            <div style="font-size:12px;opacity:.85">Days</div>
                        </div>
                        <div class="time-box">
                            <div id="dealHours">00</div>
                            <div style="font-size:12px;opacity:.85">Hours</div>
                        </div>
                        <div class="time-box">
                            <div id="dealMinutes">00</div>
                            <div style="font-size:12px;opacity:.85">Minutes</div>
                        </div>
                        <div class="time-box">
                            <div id="dealSeconds">00</div>
                            <div style="font-size:12px;opacity:.85">Seconds</div>
                        </div>
                    </div>

                    <div style="display:flex;align-items:center;gap:12px;">
                        <div class="price">$999 <span class="old-price" style="font-size:16px">$1,199</span></div>
                        <div class="deal-discount" style="background:#ff4757;color:white;padding:6px 10px;border-radius:8px;font-weight:700">-17%</div>
                    </div>

                    <p style="margin-top:10px;">Only <strong>12</strong> items left at this price!</p>
                    <div style="margin-top:18px;">
                        <button class="btn btn-primary" id="buyDeal">Buy Now</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section class="section container" aria-labelledby="test-title">
            <div class="title" id="test-title">
                <h2>What our customers say</h2>
                <p class="muted">Real reviews from verified buyers.</p>
            </div>

            <div class="testimonials" id="testimonials">
                <div class="testimonial">
                    <div class="rating">★★★★★</div>
                    <p>"Fast shipping and excellent customer support. The product exceeded my expectations!"</p>
                    <div style="display:flex;align-items:center;gap:10px">
                        <emmg src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:40px;height:40px;border-radius:50%;object-fit:cover">
                        <div>
                            <div style="font-weight:700">Ava Martin</div>
                            <div class="muted" style="font-size:13px">Verified buyer</div>
                        </div>
                    </div>
                </div>

                <div class="testimonial">
                    <div class="rating">★★★★☆</div>
                    <p>"Great selection and the checkout was smooth. Will shop again."</p>
                    <div style="display:flex;align-items:center;gap:10px">
                        <emmg src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:40px;height:40px;border-radius:50%;object-fit:cover">
                        <div>
                            <div style="font-weight:700">Michael Lee</div>
                            <div class="muted" style="font-size:13px">Frequent buyer</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Newsletter -->
        <section class="section container" aria-labelledby="news-title">
            <div class="newsletter" id="newsletter">
                <h3 id="news-title">Stay in the loop</h3>
                <p>Subscribe to get exclusive offers & new arrivals</p>
                <form id="newsletterForm" style="display:flex;justify-content:center;gap:8px;flex-wrap:wrap;" onsubmit="return false;">
                    <emnput id="newsletterEmail" type="email" placeholder="Enter your email" aria-label="Email address" required>
                    <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
                </form>
                <div id="newsletterMsg" style="margin-top:10px;font-size:14px;display:none"></div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container" style="display:flex;flex-wrap:wrap;gap:28px;align-items:flex-start;justify-content:space-between">
            <div style="max-width:360px">
                <div style="font-weight:700;font-size:18px">NexusShop</div>
                <p class="muted" style="margin-top:8px">A modern e-commerce demo built with HTML, CSS & JavaScript.</p>
                <div style="margin-top:14px;display:flex;gap:10px">
                    <a class="icon-btn" href="#" title="Facebook"><em class="fab fa-facebook"></em></a>
                    <a class="icon-btn" href="#" title="Twitter"><em class="fab fa-twitter"></em></a>
                    <a class="icon-btn" href="#" title="Instagram"><em class="fab fa-instagram"></em></a>
                </div>
            </div>

            <div style="display:flex;gap:40px;flex:1;justify-content:flex-end;flex-wrap:wrap">
                <div>
                    <div style="font-weight:700;margin-bottom:8px">Company</div>
                    <div class="muted" style="line-height:1.8">About<br>Careers<br>Press</div>
                </div>
                <div>
                    <div style="font-weight:700;margin-bottom:8px">Support</div>
                    <div class="muted" style="line-height:1.8">Help Center<br>Shipping & Returns<br>Contact</div>
                </div>
            </div>
        </div>

        <div style="text-align:center;margin-top:22px;color:var(--muted);font-size:13px">© <span id="year"></span> NexusShop. All rights reserved.</div>
    </footer>

    <script>
    
        // --- Sample data (can be replaced by server-side data or API) ---
        const CATEGORIES = [{
                id: 'phones',
                name: 'Smartphones',
                icon: 'fa-mobile-alt'
            },
            {
                id: 'laptops',
                name: 'Laptops',
                icon: 'fa-laptop'
            },
            {
                id: 'clothing',
                name: 'Clothing',
                icon: 'fa-tshirt'
            },
            {
                id: 'gadgets',
                name: 'Gadgets',
                icon: 'fa-headphones'
            },
            {
                id: 'footwear',
                name: 'Footwear',
                icon: 'fa-shoe-prints'
            },
            {
                id: 'accessories',
                name: 'Accessories',
                icon: 'fa-watch'
            }
        ];

        const PRODUCTS = [{
                id: 1,
                title: 'iPhone 14 Pro Max',
                price: 1099,
                oldPrice: 1199,
                rating: 5,
                reviews: 128,
                badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'phones'
            },
            {
                id: 2,
                title: 'MacBook Pro 14"',
                price: 1999,
                rating: 4,
                reviews: 86,
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'laptops'
            },
            {
                id: 3,
                title: 'Apple Watch Series 8',
                price: 349,
                oldPrice: 399,
                rating: 5,
                reviews: 214,
                badge: '-25%',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 4,
                title: 'Nike Air Max 270',
                price: 150,
                rating: 4,
                reviews: 53,
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'footwear'
            },
            {
                id: 5,
                title: 'Sony A7 IV Camera',
                price: 2499,
                rating: 5,
                reviews: 42,
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            },
            {
                id: 6,
                title: 'Chanel No. 5',
                price: 120,
                rating: 5,
                reviews: 189,
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 7,
                title: 'Travel Backpack',
                price: 79,
                oldPrice: 99,
                rating: 4,
                reviews: 67,
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 8,
                title: 'Sony WH-1000XM5',
                price: 399,
                rating: 5,
                reviews: 156,
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            }
        ];

        // --- Render categories & products ---
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');

        let cartCount = 0;

        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon"><em class="fas ${cat.icon}"></em></div>
                    <h4>${cat.name}</h4>
                    <div class="muted" style="font-size:13px;margin-top:6px">Explore ${cat.name}</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    window.scrollTo({
                        top: document.getElementById('prod-title').offsetTop - 60,
                        behavior: 'smooth'
                    });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product';
                el.innerHTML = `
                    ${p.badge ? `<div style="position:absolute;margin:12px"><span style="background:${p.badge.startsWith('-')? '#ff4757' : 'var(--success)'};color:white;padding:6px 8px;border-radius:8px;font-weight:700;font-size:12px">${p.badge}</span></div>` : ''}
                    <emmg src="${p.img}" alt="${escapeHtml(p.title)}">
                    <div class="product-body">
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="muted">${p.category}</div>
                        <div class="price-row">
                            <div>
                                <div class="price">$${p.price.toLocaleString()}</div>
                                ${p.oldPrice ? `<div class="old-price">${p.oldPrice ? '$'+p.oldPrice.toLocaleString() : ''}</div>` : ''}
                            </div>
                            <div class="rating">${'★'.repeat(Math.round(p.rating))} <span style="font-size:12px;color:var(--muted)">(${p.reviews})</span></div>
                        </div>
                    </div>
                    <div class="product-footer">
                        <button class="add-btn" data-id="${p.id}"><em class="fas fa-cart-plus"></em> Add</button>
                        <button class="wish-btn" aria-label="Add to wishlist"><em class="far fa-heart"></em></button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            // attach listeners to add buttons
            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    const id = Number(btn.dataset.id);
                    addToCart(id);
                });
            });
        }

        // --- Utilities ---
        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;',
                '<': '&lt;',
                '>': '&gt;',
                '"': '&quot;',
                "'": '&#39;'
            } [s]));
        }

        function addToCart(productId) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            cartCountEl.textContent = cartCount;
            // Simple feedback
            const btn = document.querySelector(`.add-btn[data-id="${productId}"]`);
            if (btn) {
                const original = btn.innerHTML;
                btn.innerHTML = 'Added ✓';
                btn.disabled = true;
                setTimeout(() => {
                    btn.innerHTML = original;
                    btn.disabled = false;
                }, 1200);
            }
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) {
                renderProducts(PRODUCTS);
                return;
            }
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) ||
                p.category.toLowerCase().includes(q)
            );
            renderProducts(filtered);
        }

        // --- Search handling ---
        document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') filterProducts(e.target.value);
        });

        // --- Mobile menu toggle ---
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        mobileToggle.addEventListener('click', () => {
            mobileMenu.style.display = mobileMenu.style.display === 'none' || !mobileMenu.style.display ? 'block' : 'none';
        });

        // --- Simple dropdown (desktop) ---
        const catMenuBtn = document.getElementById('catMenuBtn');
        catMenuBtn && catMenuBtn.addEventListener('click', (e) => {
            e.preventDefault();
            alert('Use the category tiles below to filter — this is a demo.');
        });

        // --- Newsletter subscribe (demo) ---
        document.getElementById('newsletterForm').addEventListener('submit', (e) => {
            e.preventDefault();
            const email = document.getElementById('newsletterEmail').value.trim();
            const msg = document.getElementById('newsletterMsg');
            if (!email || !email.includes('@')) {
                msg.style.display = 'block';
                msg.textContent = 'Please enter a valid email address.';
                msg.style.color = '#ffb3b3';
                return;
            }
            msg.style.display = 'block';
            msg.style.color = '#cce7ff';
            msg.textContent = 'Thanks! You are subscribed.';
            document.getElementById('newsletterEmail').value = '';
            setTimeout(() => msg.style.display = 'none', 3000);
        });

        // --- Countdown timer for deal ---
        (function setupDealTimer() {
            // Target: 1 day from now (demo)
            const now = new Date();
            const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000); // 24h36m
            function tick() {
                const diff = target - new Date();
                const days = Math.floor(diff / (24 * 3600 * 1000));
                const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
                const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
                const secs = Math.floor((diff % (60 * 1000)) / 1000);
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
                if (diff <= 0) clearInterval(timer);
            }
            tick();
            const timer = setInterval(tick, 1000);
        })();

        // --- Small UI bindings ---
        document.getElementById('shopNow').addEventListener('click', () => window.scrollTo({
            top: document.getElementById('prod-title').offsetTop - 60,
            behavior: 'smooth'
        }));
        document.getElementById('exploreDeals').addEventListener('click', () => window.location.hash = '#deals');
        document.getElementById('buyDeal').addEventListener('click', () => {
            cartCount += 1;
            updateCartCount();
            alert('Deal added to cart (demo).');
        });

        // --- Initialization ---
        (function init() {
            renderCategories();
            renderProducts(PRODUCTS);
            updateCartCount();
            document.getElementById('year').textContent = new Date().getFullYear();
        })();
    </script>
</body>

</html> 
