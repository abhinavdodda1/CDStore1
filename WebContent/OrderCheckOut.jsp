<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Including the style sheets  -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css"> -->
<link rel="stylesheet" href="styles/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="styles/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="styles/styles.css" type="text/css">

<!-- Including the java script files -->
<script type="text/javascript" src="validations/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
<script type="text/javascript" src="validations/bootstrap.min.js"></script>
<script type="text/javascript" src="validations/validation.js"></script>

<title>Order Check Out</title>
</head>
<body id="order-checkout-body">
	<div class="container-fluid">
		<%@ include file="Header.jsp"%>
		<div class="row order-checkout-div">
		<form id="order-checkout-form" action="OrderCheckOut" class="text-left" method="post">
			<div class="col-sm-4">
				<div class="section-title">
					<strong>Delivery Address</strong>
				</div>
				<address class="order-checkout-content">
					<div>
						<strong>${username}</strong>
					</div>
					
					<div>${street}</div>
					<div>${province}</div>
					<div>${country}</div>
					<div>${zip}</div>
					<div>${phone}</div>
					<input type="hidden" name="shippingid" value="${shippingid} }">
				</address>
				<!-- <div>
					<button type="button" class="btn btn-primary"
						id="openShippingAddrModal">
						<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
					</button>
				</div> -->
			</div>
			<div class="col-sm-8">
				<div class="section-title">
					<strong>Order Details</strong>
				</div>
				<div class="row order-checkout-content">
					<div class="col-sm-6">
						<div>
							<label>Expected Delivery Detail: ${expectedDeliveryDate }</label>
						</div>
						<div>
							<label>Items Ordered: 2HARDCODED</label>
						</div>
						<!-- <div>
							<label>Order ID: 1342HARDCODED</label>
						</div> -->
					</div>
					<div class="col-sm-6">
						<section>
							<div>
								<label>Order Total:$ ${totalAmount }</label>
							</div>
							<div>
								<label>Delivery Charges:$ ${deliveryCharges }</label>
							</div>
							<div>
								<label>Discount: $0</label>
							</div>
							<div>
								<label>Tax:$ ${taxes }</label>
							</div>
							<div>
								<label>Total:$ ${totalAamount+deliveryCharges+taxes}</label>
							</div>
						</section>
						<div>
							<button type="submit" class="btn btn-primary">
								Pay <i class="fa fa-usd" aria-hidden="true"></i>
							</button>
						</div>

					</div>
				</div>
			</div>
			</form>
		</div>
		<%@ include file="Footer.jsp"%>
	</div>
</body>
</html>
