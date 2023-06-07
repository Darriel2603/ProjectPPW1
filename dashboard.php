<?php require_once('header.php'); ?>

<?php
if (!isset($_SESSION['customer']) || empty($_SESSION['customer'])) {
    header('location: ' . BASE_URL . 'logout.php');
    exit;
}
?>

<div class="page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <?php require_once('customer-sidebar.php'); ?>
            </div>
            <div class="col-md-12">
                <div class="user-content">
                    <h3 class="text-center">
                        <?php echo LANG_VALUE_90; ?>
                    </h3>
                </div>
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>