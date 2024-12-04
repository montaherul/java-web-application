<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Educational Website</title>
  <!-- Link to local Bootstrap CSS -->
  <link href="<%= request.getContextPath() %>/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
  <!-- Navbar -->
  <%@ include file="/WEB-INF/includes/navbar.jsp" %>

  <!-- Hero Section -->
  <header class="jumbotron text-center bg-primary text-white">
    <h1 class="display-4">Welcome to Course Muster</h1>
    <p class="lead">Learn, Grow, and Achieve with Our Comprehensive Courses</p>
    <a href="#courses" class="btn btn-light btn-lg">Explore Courses</a>
  </header>

  <!-- Courses Section -->
  <section id="courses" class="my-5">
    <div class="container">
      <h2 class="text-center mb-4">Our Courses</h2>
      <div class="row">
        <div class="col-md-4">
          <div class="card">
            <img src="<%= request.getContextPath() %>/images/mobile.png" class="card-img-top" alt="Course 1">
            <div class="card-body">
              <h5 class="card-title">Web Development</h5>
              <p class="card-text">Master the skills to build stunning websites.</p>
              <a href="<%= request.getContextPath() %>\courses\web-development.jsp" class="btn btn-primary">Learn More</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <img src="<%= request.getContextPath() %>/images/data-science.png" class="card-img-top" alt="Course 2">
            <div class="card-body">
              <h5 class="card-title">Data Science</h5>
              <p class="card-text">Dive into the world of data analytics and AI.</p>
              <a href="#" class="btn btn-primary">Learn More</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <img src="<%= request.getContextPath() %>/images/graphic-design.png" class="card-img-top" alt="Course 3">
            <div class="card-body">
              <h5 class="card-title">Graphic Design</h5>
              <p class="card-text">Unleash your creativity with professional tools.</p>
              <a href="#" class="btn btn-primary">Learn More</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Features Section -->
  <section id="features" class="bg-light py-5">
    <div class="container">
      <h2 class="text-center mb-4">Why Choose Us?</h2>
      <div class="row">
        <div class="col-md-4 text-center">
          <i class="fas fa-graduation-cap fa-3x text-primary mb-3"></i>
          <h5>Expert Instructors</h5>
          <p>Learn from industry-leading experts.</p>
        </div>
        <div class="col-md-4 text-center">
          <i class="fas fa-laptop-code fa-3x text-primary mb-3"></i>
          <h5>Flexible Learning</h5>
          <p>Access courses anytime, anywhere.</p>
        </div>
        <div class="col-md-4 text-center">
          <i class="fas fa-award fa-3x text-primary mb-3"></i>
          <h5>Certification</h5>
          <p>Earn certificates to showcase your achievements.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- Account Creation Form -->
  <section id="account" class="py-5">
    <div class="container">
      <h2 class="text-center mb-4">Create Your Account</h2>
      <form action="submit-form" method="post" enctype="multipart/form-data">
        <div class="form-group">
          <label  for="name">Your Name</label>
          <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name">
        </div>

        <div class="form-group">
          <label for="email">Email address</label>
          <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email">
        </div>

        <div class="form-group">
          <label for="mobile">Mobile Number</label>
          <input type="text" class="form-control" id="mobile" name="mobile" placeholder="Enter your mobile">
        </div>

        <div class="form-group">
          <label for="message">Message About you</label>
          <textarea class="form-control" id="message" name="message" rows="3" placeholder="Enter your message"></textarea>
        </div>

        <div class="form-group">
          <label for="image">Upload Your Image</label>
          <input type="file" class="form-control-file" id="image" name="image">
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
      </form>
    </div>
  </section>

  <!-- Footer -->
  <footer class="text-center py-4 bg-dark text-white">
    <p>&copy; 2024 course Muster</p>
  </footer>
</div>

<!-- Link to local Bootstrap JS and dependencies -->
<script src="<%= request.getContextPath() %>/js/bootstrap.min.js"></script>
</body>
</html>
