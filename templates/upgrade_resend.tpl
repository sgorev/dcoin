<!-- container -->
<div class="container">

	<legend><h2><?php echo $lng['upgrade_resend_title']?></h2></legend>

	<?php echo $lng['data']?>:<br>
	<textarea id="for-signature" style="width:500px; height:100px"><?php echo "{$tpl['data']['type_id']},{$tpl['data']['time']},{$tpl['data']['user_id']}"; ?></textarea><br>
	<label><?php echo $lng['sign']?>:</label>
	<textarea id="signature1" style="width:500px; height:100px"></textarea>
	<label><?php echo $lng['sign']?> 2</label>
	<textarea id="signature2" style="width:500px;" rows="4"></textarea>
	<label><?php echo $lng['sign']?> 3</label>
	<textarea id="signature3" style="width:500px;" rows="4"></textarea>
	<br>
	<script>
	$('#save_queue').bind('click', function () {

		$.post( 'ajax/save_queue.php', {
							'type' : '<?php echo $tpl['data']['type']?>',
							'user_id' : <?php echo $tpl['data']['user_id']?>,
							'time' : <?php echo $tpl['data']['time']?>,
										'signature1': $('#signature1').val(),
			'signature2': $('#signature2').val(),
			'signature3': $('#signature3').val()
							}, function (data) {
			fc_navigate ('upgrade', {'alert': '<?php echo $lng['sent_to_the_net'] ?>'} );
		});
	});
	</script>

	<button class="btn btn-success"  type="button" id="save_queue"><?php echo $lng['send_to_net']?></button>


</div>
<!-- /container -->