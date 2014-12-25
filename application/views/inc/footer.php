</div><!--container-->

</div><!--main-->

<script type="text/javascript">
    $(document).ready(function () {
    //hide system messages
        $('.msg').hide().slideDown('slow').delay(2000).slideUp("slow");
    });
</script>
<div class="footer">
    <div class="footer-content">
        <hr/>
    <span class="">
        &copy; 2014 ~
        <span class="label label-info"
              onclick="window.open('http://icoolpix.com','_blank')">iCoolPix Designs</span>
        ~ ver: <?php echo $this->config->item('version'); ?>
    </span>
    </div>
</div>
</body>
</html>