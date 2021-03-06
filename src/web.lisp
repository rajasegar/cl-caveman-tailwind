(in-package :cl-user)
(defpackage cl-caveman-tailwind.web
  (:use :cl
        :caveman2
        :cl-caveman-tailwind.config
        :cl-caveman-tailwind.view
        :cl-caveman-tailwind.db
        :datafly
        :sxql)
  (:export :*web*))
(in-package :cl-caveman-tailwind.web)

;; for @route annotation
(syntax:use-syntax :annot)

;;
;; Application

(defclass <web> (<app>) ())
(defvar *web* (make-instance '<web>))
(clear-routing-rules *web*)

;;
;; Routing rules

(defroute "/" ()
  (render #P"index.html"))

(defroute "/dashboard" ()
  (render #P"dashboard.html"))
;;
;; Error pages

(defmethod on-exception ((app <web>) (code (eql 404)))
  (declare (ignore app))
  (merge-pathnames #P"_errors/404.html"
                   *template-directory*))
