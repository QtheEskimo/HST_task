$(document).ready(function(){

	$('ul.sort_list').sortable({

		connectWith: "ul.sort_list",
		update: function(e,u){

		 item_id = $(u.item).attr('id')
		 item_pos =  $(u.offset).attr('top')

		 $.post('/collection/sort','collection='+$(this).attr('id')+'&'+$(this).sortable('serialize'),function(data){


		 });

		 


		}
	})


})
