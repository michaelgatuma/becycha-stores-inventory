<?php

function sendLoginNotificationEmail($adminEmail, $userEmail) {
    $ci =& get_instance();
    $ci->load->library('email');

    // Set email parameters
    $ci->email->from('info@inventory.test', 'Becycha Stores');
    $ci->email->to($adminEmail);
    $ci->email->subject('User Login Notification');
    $ci->email->message("User with email $userEmail has logged in.");

    // Send email
    $ci->email->send();
}
