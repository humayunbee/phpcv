<?php if ($_settings->chk_flashdata('success')) : ?>
	<script>
		alert_toast("<?php echo $_settings->flashdata('success') ?>", 'success')
	</script>
<?php endif; ?>
<style>
	.banner-img {
		width: 75px;
		object-fit: contain;
	}
</style>
<div class="col-lg-12">
	<div class="card card-outline card-primary">
		<div class="card-header">
			<div class="card-tools">
				<a class="btn btn-block btn-sm btn-default btn-flat border-primary new_ido" href="javascript:void(0)"><i class="fa fa-plus"></i> Add New</a>
			</div>
		</div>
		<div class="card-body">
			<table class="table tabe-hover table-bordered table-compact" id="list">
				<colgroup>
					<col width="15%">
					<col width="20%">
					<col width="20%">
					<col width="40%">
					<col width="15%">
				</colgroup>
				<thead>
					<tr>
						<th class="text-center">#</th>
						<th>Banner</th>
						<th>Project Name</th>
						<th>Summary</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<?php
					$i = 1;
					$qry = $conn->query("SELECT * FROM `ido` order by RAND() ");
					while ($row = $qry->fetch_assoc()) :
					?>
						<tr>
							<th class="text-center"><?php echo $i++ ?></th>
							<td>
								<center><img src="<?php echo validate_image($row['banner']) ?>" class="banner-img img-thumbnail" alt=""></center>
							</td>
							<td><b class="truncate-1"><?php echo ucwords($row['name']) ?></b></td>
							<td><small class="truncate-1"><?php echo $row['summary'] ?></small></td>
							<td class="text-center">
								<div class="btn-group">
									<a href="javascript:void(0)" data-id='<?php echo $row['id'] ?>' class="btn btn-primary btn-flat btn-sm manage_ido">
										<i class="fas fa-edit"></i>
									</a>
									<button type="button" class="btn btn-danger btn-sm btn-flat delete_ido" data-id="<?php echo $row['id'] ?>">
										<i class="fas fa-trash"></i>
									</button>
								</div>
							</td>
						</tr>
					<?php endwhile; ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
<script>
	$(document).ready(function() {
		$('.new_ido').click(function() {
			location.href = _base_url_ + "admin/?page=ido/manage";
		})
		$('.manage_ido').click(function() {
			location.href = _base_url_ + "admin/?page=ido/manage&id=" + $(this).attr('data-id')
		})
		$('.delete_ido').click(function() {
			_conf("Are you sure to delete this detail?", "delete_ido", [$(this).attr('data-id')])
		})
		$('#list').dataTable()
	})

	function delete_ido($id) {
		start_loader()
		$.ajax({
			url: _base_url_ + 'classes/Content.php?f=ido_delete',
			method: 'POST',
			data: {
				id: $id
			},
			success: function(resp) {
				if (resp == 1) {
					location.reload()
				}
			}
		})
	}
</script>