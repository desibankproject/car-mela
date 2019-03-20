<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Add new Car</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <h2>Add Car details </h2>
  <form action="AddNewCar" method="post">
   <div class="form-group">
      <label for="title">Title</label>
      <input type="text" class="form-control" name="title" id="title">
    </div>
    <div class="form-group">
      <label for="subtitle">Subtitle</label>
      <input type="text" class="form-control" name="subtitle" id="subtitle">
    </div>
    <div class="form-group">
      <label for="year">Year</label>
      <select class="form-control" name="year" id="year">
        <option>2019</option>
        <option>2018</option>
        <option>2017</option>
        <option>2016</option>
      </select>
      </div>
       <div class="form-group">
      <label for="description">Description</label>
      <input type="text" class="form-control" name="description" id="description">
    </div>
       <div class="form-group">
      <label for="image">Image</label>
      <input type="text" class="form-control" name="image" id="image">
    </div>
     <a href="GalleryPage"><button type="submit" class="btn btn-danger">Add Car </button> </a>
      </form>
      </div>
</body>
</html>