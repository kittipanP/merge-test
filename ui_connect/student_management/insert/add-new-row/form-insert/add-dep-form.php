
    <form action="<?php echo $editFormAction; ?>" method="post" name="depForm" id="addform" enctype="multipart/form-data">


<div class="w3-row-padding w3-center w3-margin-top">
  <div class="w3-half ">
      	
        <input type="hidden" name="dep_id" value="" size="32" />

        <div align="left">
            <label for="">  Institute Name : </label> 
       	</div>
        <input type="text" name="dep_name" value="" placeholder="" size="32" />
      
  </div>
  <div class="w3-half ">
    <div class="w3-row">
      <div class="w3-half w3-container ">

        <div align="left">
            <label for="">  Institute Type : </label> 
       	</div>
        <input type="text" name="cost_centre" value="" placeholder="" size="32" />

	
      </div>
      <div class="w3-half w3-container ">

        <div align="left">
            <label for="">  Country : </label> 
       	</div>
        <input type="text" name="dep_ext" value="" placeholder="" size="32" />
      
      </div>
    </div>
  </div>
</div>


        <input type="submit" name="submit" class="action-button" value="Submit" />
        <input type="hidden" name="MM_insert" class="submit action-button" value="addform" />
        <input type="hidden" name="MM_insert" value="depForm" />

    </form>