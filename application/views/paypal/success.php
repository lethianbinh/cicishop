<!DOCTYPE html>
<html>

<head>
  <title>Bill Details</title>
  <!-- Latest CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>

<style>
	.container{
		border: 1px solid #c4c4c4;
		font-weight: bold;
		margin: 30px 65px;
		background-color: #f3f3f3;
	}

	h2{
		text-align: center;
		background-color: #63d2e8;
		padding: 20px;
		font-size: 36px;
	}

	p{
		padding: 20px 50px;
		font-size: 20px;
		background-color: #f3f3f3;
	}
</style>

<body>
    <div class="container">
        <h2 class="mt-3 mb-3">Bill Details</h2>
        <p>
        	Mã đơn hàng: <?php echo $txn_id; ?> <br/>
        	
        	Email: <?php echo $payer_email ?> <br/>
        	
        	Tên sản phẩm: <?php echo $product_name; ?> <br/>
        	Tổng tiền: <?php echo $payment_gross . ' ' . $currency_code; ?> <br/>
        	Trạng thái thanh toán: <?php echo $payment_status; ?> <br/>
        </p>
    </div>
</body>

</html>
