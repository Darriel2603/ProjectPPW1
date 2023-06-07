<?php
$statement = $pdo->prepare("SELECT * FROM settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row)
{
    $footer_about = $row['footer_about'];
    $contact_email = $row['contact_email'];
    $contact_phone = $row['contact_phone'];
    $contact_address = $row['contact_address'];
    $footer_copyright = $row['footer_copyright'];
    $total_recent_post_footer = $row['total_recent_post_footer'];
    $total_popular_post_footer = $row['total_popular_post_footer'];
    $newsletter_on_off = $row['newsletter_on_off'];
}
?>

<?php
if($newsletter_on_off == 1)
{
    if(isset($_POST['form_subscribe']))
    {
        // Proses pengiriman formulir
        if(empty($_POST['email_subscribe']))
        {

            $error_message1 .= LANG_VALUE_131;
        }
        else
        {
            if (filter_var($_POST['email_subscribe'], FILTER_VALIDATE_EMAIL) === false)
            {
                $error_message1 .= LANG_VALUE_134;
            }
            else
            {
                $statement = $pdo->prepare("SELECT * FROM subscriber WHERE subs_email=?");
                $statement->execute(array($_POST['email_subscribe']));
                $total = $statement->rowCount();
                if($total)
                {
                    $error_message1 .= LANG_VALUE_147;
                }
                else
                {
                    $key = md5(uniqid(rand(), true));
                    $current_date = date('Y-m-d');
                    $current_date_time = date('Y-m-d H:i:s');

                    $statement = $pdo->prepare("INSERT INTO subscriber (subs_email,subs_date,subs_date_time,subs_hash,subs_active) VALUES (?,?,?,?,?)");
                    $statement->execute(array($_POST['email_subscribe'],$current_date,$current_date_time,$key,0));

                    $to = $_POST['email_subscribe'];
                    $subject = 'Subscriber Email Confirmation';
                    $verification_url = BASE_URL.'verify.php?email='.$to.'&key='.$key;

                    $message = '
                    Thank you for showing interest in subscribing to our newsletter!<br><br>
                    Please ensure to check your email and verify your subscription:
                    '.$verification_url.'<br><br>
                    Please note that this link will remain valid for a duration of 24 hours.
                    ';

                    $headers = 'From: ' . $contact_email . "\r\n" .
                        'Reply-To: ' . $contact_email . "\r\n" .
                        'X-Mailer: PHP/' . phpversion() . "\r\n" .
                        "MIME-Version: 1.0\r\n" .
                        "Content-Type: text/html; charset=ISO-8859-1\r\n";

                    $success_message1 = LANG_VALUE_136;

                    // Setelah data dikirim, lakukan pengalihan halaman
                    header("Location: ".$_SERVER['PHP_SELF']);
                }

            }
        }
    }
}

?>

<?php if($newsletter_on_off == 1): ?>
<section class="home-newsletter">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="single">
                    <?php
                    if($error_message1 != '') {
                        echo "<script>alert('".$error_message1."')</script>";
                    }
                    if($success_message1 != '') {
                        echo "<script>alert('".$success_message1."')</script>";
                    }
                    ?>

                    <form action="" method="post">
                        <?php $csrf->echoInputField(); ?>
                        <h2><?php echo LANG_VALUE_93; ?></h2>
                        <div class="input-group">
                            <input type="email" class="form-control" placeholder="<?php echo LANG_VALUE_95; ?>" name="email_subscribe">
                            <span class="input-group-btn">
                                <button class="btn btn-theme" type="submit" name="form_subscribe"><?php echo LANG_VALUE_92; ?></button>
                            </span>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<?php endif; ?>

<div class="footer-bottom">
    <div class="container">
        <div class="row">
            <div class="col-md-12 copyright">
                <?php echo $footer_copyright; ?>
            </div>
        </div>
    </div>
</div>

<a href="#" class="scrollup">
    <i class="fa-sharp fa-light fa-angle-up"></i>
</a>

<?php
$statement = $pdo->prepare("SELECT * FROM settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
?>

<script src="assets/js/jquery-2.2.4.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="https://js.stripe.com/v2/"></script>
<script src="assets/js/megamenu.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/owl.animate.js"></script>
<script src="assets/js/jquery.bxslider.min.js"></script>
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script src="assets/js/rating.js"></script>
<script src="assets/js/jquery.touchSwipe.min.js"></script>
<script src="assets/js/bootstrap-touch-slider.js"></script>
<script src="assets/js/select2.full.min.js"></script>
<script src="assets/js/custom.js"></script>
<script>
    function confirmDelete()
    {
        return confirm("Sure you want to delete this data?");
    }
    $(document).ready(function () {
        advFieldsStatus = $('#advFieldsStatus').val();

        $('#paypal_form').hide();
        $('#stripe_form').hide();
        $('#bank_form').hide();

        $('#advFieldsStatus').on('change',function() {
            advFieldsStatus = $('#advFieldsStatus').val();
            if ( advFieldsStatus == '' ) {
                $('#paypal_form').hide();
                $('#stripe_form').hide();
                $('#bank_form').hide();
            } else if ( advFieldsStatus == 'PayPal' ) {
                $('#paypal_form').show();
                $('#stripe_form').hide();
                $('#bank_form').hide();
            } else if ( advFieldsStatus == 'Stripe' ) {
                $('#paypal_form').hide();
                $('#stripe_form').show();
                $('#bank_form').hide();
            } else if ( advFieldsStatus == 'Bank Deposit' ) {
                $('#paypal_form').hide();
                $('#stripe_form').hide();
                $('#bank_form').show();
            }
        });
    });


    $(document).on('submit', '#stripe_form', function () {
        $('#submit-button').prop("disabled", true);
        $("#msg-container").hide();
        Stripe.card.createToken({
            number: $('.card-number').val(),
            cvc: $('.card-cvc').val(),
            exp_month: $('.card-expiry-month').val(),
            exp_year: $('.card-expiry-year').val()
        }, stripeResponseHandler);
        return false;
    });
    function stripeResponseHandler(status, response) {
        if (response.error) {
            $('#submit-button').prop("disabled", false);
            $("#msg-container").html('<div style="color: red;border: 1px solid;margin: 10px 0px;padding: 5px;"><strong>Error:</strong> ' + response.error.message + '</div>');
            $("#msg-container").show();
        } else {
            var form$ = $("#stripe_form");
            var token = response['id'];
            form$.append("<input type='hidden' name='stripeToken' value='" + token + "' />");
            form$.get(0).submit();
        }
    }
</script>

</body>
</html>
