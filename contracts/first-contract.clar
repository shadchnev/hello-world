
;; first-contract
;; <add a description here>

;; constants
;;
(define-constant ERR_INVALID_STRING u0)

;; data maps and vars
;;
(define-data-var welcome-message (string-utf8 100) u"Hello, world!")

;; private functions
;;

;; public functions
;;
(define-read-only (get-message)
    (var-get welcome-message)
)

(define-public (set-message (message (string-utf8 100)))
    (if (var-set welcome-message message)
        (ok true)
        (err ERR_INVALID_STRING)
    )
)