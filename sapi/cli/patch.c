#include "php.h"

#ifdef __CYGWIN__
#include "ext/zip/php_zip.h"
int zip_encryption_method_supported(zip_int16_t method, int encrypt) {
    return 1;
}
#endif