$.extend( $.fn.dataTable.FixedHeader, {
              responsive: true
          } );

$(document).ready(function() {

          var table = $('#myTable').DataTable( {
              /* rowReorder: {
              selector: 'td:nth-child(2)'
              }, */
              responsive: true,
              dom: 'Bfrtip',
              select: true,
              buttons: [
                  {
                      text: '更新餐厅信息',
                      action: function ( e, dt, node, config ) {
                          recEntry = dt.row( { selected: true } ).data();
                          openForm(recEntry,'update');
                      },
                      enabled: false
                  },
                  {
                      text: '删除餐厅信息',
                      action: function ( e, dt, node, config ) {
                          recEntry = dt.row( { selected: true } ).data();
                          openForm(recEntry,'delete');
                      },
                      enabled: false
                  },
                   {
                    text: '新增餐厅信息',
                    action: function ( e, dt, node, config ) {
                        // alert( 'Button activated' );
                         recEntry = []
                         openForm(recEntry,'add');
                    }
                   }
              ]
          } );

          table.on( 'select deselect', function () {
              var selectedRows = table.rows( { selected: true } ).count();

              table.button( 0 ).enable( selectedRows === 1 );
              table.button( 1 ).enable( selectedRows > 0 );
          } );

      } );

          function openForm(recEntry,whichForm) {
            
              if (whichForm == 'add') {
                 $("#myAddForm").modal();
                  // document.getElementById("add_product_id").value = recEntry[0];
                  document.getElementById("add_rank").value = 0;
                  document.getElementById("add_name").value = '';
                  document.getElementById("add_img").value = '';
                  document.getElementById("add_food_type").value = '';
                  document.getElementById("add_destination").value = '';
                  document.getElementById("add_per").value = '';
                  document.getElementById("add_score").value = 0;
              } else if (whichForm == 'update') {
                 $("#myUpdateForm").modal();
                  document.getElementById("upd_rank").value = recEntry[0];
                  document.getElementById("upd_name").value = recEntry[1];
                  document.getElementById("upd_img").value = recEntry[2];
                  document.getElementById("upd_food_type").value = recEntry[3];
                  document.getElementById("upd_destination").value = recEntry[4];
                  document.getElementById("upd_per").value = recEntry[5];
                  document.getElementById("upd_score").value = recEntry[6];
                  document.getElementById("upd_record_id").value = recEntry[0];
                  
              } else {
                  $("#myDeleteForm").modal();
                  document.getElementById("del_rank").value = recEntry[0];
                  document.getElementById("del_name").value = recEntry[1];
                  document.getElementById("del_img").value = recEntry[2];
                  document.getElementById("del_food_type").value = recEntry[3];
                  document.getElementById("del_destination").value = recEntry[4];
                  document.getElementById("del_per").value = recEntry[5];
                  document.getElementById("del_score").value = recEntry[6];
                  document.getElementById("del_record_id").value = recEntry[0];
                
              }
          }

          function closeForm(whichForm) {
     
            if (whichForm == 'add') {
                document.getElementById("myAddForm").style.display = "none";
            } else if (whichForm == 'update') {
                document.getElementById("myUpdateForm").style.display = "none";
            } else {
                document.getElementById("myDeleteForm").style.display = "none";
            }
          }