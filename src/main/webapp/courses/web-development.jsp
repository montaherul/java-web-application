<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Web Development course </title>
    <!-- Link to local Bootstrap CSS -->
    <link href="<%= request.getContextPath() %>/css/bootstrap.min.css" rel="stylesheet">

</head>
<div class="container-fluid">
    <!-- Navbar -->
    <%@ include file="/WEB-INF/includes/navbar.jsp" %>
    <div class="container">
    <!-- Hero Section -->
    <header class="jumbotron text-center bg-primary text-white">
        <h1 class="display-4">Welcome to Web Development Course</h1>
        <p class="lead">Master the skills to build stunning websites. Learn HTML, CSS, JavaScript, and backend development.</p>

    </header>

        <!-- Faculty Section -->
        <section class="faculties">
            <h3>Faculties</h3>
            <div class="faculty-list">
                <div class="faculty">
                    <img src="images/faculty1.jpg" alt="Faculty 1">
                    <p>মাশরুর তাওহিদ</p>
                    <p>Physics</p>
                </div>
                <div class="faculty">
                    <img src="images/faculty2.jpg" alt="Faculty 2">
                    <p>অর্ণব দাস</p>
                    <p>Physics</p>
                </div>
                <div class="faculty">
                    <img src="images/faculty3.jpg" alt="Faculty 3">
                    <p>আদিত্য তাওহিদ</p>
                    <p>Physics</p>
                </div>
                <div class="faculty">
                    <img src="images/faculty4.jpg" alt="Faculty 4">
                    <p>সরজ দাস</p>
                    <p>Chemistry</p>
                </div>
                <div class="faculty">
                    <img src="images/faculty5.jpg" alt="Faculty 5">
                    <p>হিমেল তাওহিদ</p>
                    <p>Chemistry</p>
                </div>
            </div>
        </section>

        <!-- Course Information -->
        <section class="course-info">
            <h3>কোর্সটি সম্পর্কে</h3>
            <p>২২ ব্যাচে আমাদের থেকে এক্সক্লুসিভ চান পেয়েছে ১৭২ জন...</p>
            <p>কোর্সে রেজিস্ট্রেশন করার জন্য ক্লাস রুটিন ডাউনলোড করুন:</p>
            <a href="files/class-routine.pdf" class="btn-download">Download Class Routine</a>
        </section>

        <!-- Course Details -->
        <section class="course-details">
            <h3>সচরাচর জিজ্ঞাসা:</h3>
            <p><b>কোর্সটি কীভাবে কিনবো?</b></p>
            <p>বিস্তারিত জানতে <a href="https://youtube.com" target="_blank">এই ভিডিও</a> দেখুন।</p>
        </section>

        <!-- Pricing -->
        <section class="pricing">
            <h3>Price</h3>
            <p class="original-price">10000৳</p>
            <p class="discounted-price">5000৳</p>
            <a href="registration.jsp" class="btn-register">কোর্সটি এনরোল করতে ক্লিক করুন</a>
        </section>
    </div>
    </div>

</div>
</body>
</html>
