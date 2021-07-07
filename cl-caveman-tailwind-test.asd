(defsystem "cl-caveman-tailwind-test"
  :defsystem-depends-on ("prove-asdf")
  :author "Rajasegar Chandran"
  :license ""
  :depends-on ("cl-caveman-tailwind"
               "prove")
  :components ((:module "tests"
                :components
                ((:test-file "cl-caveman-tailwind"))))
  :description "Test system for cl-caveman-tailwind"
  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
