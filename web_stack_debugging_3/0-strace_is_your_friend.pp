# Fixes bad `phpp` extensions to `php` in the WordPress file wp-settings.php

exec { 'fix-wordpress':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/'
}
```

### How to run and check it:

1.  **Create the file:**
    ```bash
    vi 0-strace_is_your_friend.pp
    # Paste the puppet code above
    ```

2.  **Apply the fix:**
    ```bash
    puppet apply 0-strace_is_your_friend.pp
    ```

3.  **Verify:**
    ```bash
    curl -I 127.0.0.1
