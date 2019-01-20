+++
title = "Write Kubernetes Operator"
date =  2019-01-15T14:36:59+08:00
weight = 5
draft = true
+++

```
├── build
│   └── Dockerfile
├── cmd
│   └── manager
│       └── main.go
├── deploy
│   ├── operator.yaml
	│   ├── role_binding.yaml
│   ├── role.yaml
│   └── service_account.yaml
├── Gopkg.lock
├── Gopkg.toml
├── pkg
│   ├── apis
│   │   └── apis.go
│   └── controller
│       └── controller.go
└── version
    └── version.go
```

```
├── build
│   ├── Dockerfile
│   └── _output
│       └── bin
│           ├── client-gen
│           ├── deepcopy-gen
│           ├── defaulter-gen
│           ├── informer-gen
│           └── lister-gen
├── cmd
│   └── manager
│       └── main.go
├── deploy
│   ├── crds
│   │   ├── app_v1alpha1_appservice_crd.yaml
│   │   └── app_v1alpha1_appservice_cr.yaml
│   ├── operator.yaml
│   ├── role_binding.yaml
│   ├── role.yaml
│   └── service_account.yaml
├── Gopkg.lock
├── Gopkg.toml
├── pkg
│   ├── apis
│   │   ├── addtoscheme_app_v1alpha1.go
│   │   ├── apis.go
│   │   └── app
│   │       └── v1alpha1
│   │           ├── appservice_types.go
│   │           ├── doc.go
│   │           ├── register.go
│   │           └── zz_generated.deepcopy.go
│   └── controller
│       └── controller.go
└── version
    └── version.go
```

```
.
├── build
│   ├── Dockerfile
│   └── _output
│       └── bin
│           ├── client-gen
│           ├── deepcopy-gen
│           ├── defaulter-gen
│           ├── informer-gen
│           └── lister-gen
├── cmd
│   └── manager
│       └── main.go
├── deploy
│   ├── crds
│   │   ├── app_v1alpha1_appservice_crd.yaml
│   │   └── app_v1alpha1_appservice_cr.yaml
│   ├── operator.yaml
│   ├── role_binding.yaml
│   ├── role.yaml
│   └── service_account.yaml
├── Gopkg.lock
├── Gopkg.toml
├── pkg
│   ├── apis
│   │   ├── addtoscheme_app_v1alpha1.go
│   │   ├── apis.go
│   │   └── app
│   │       └── v1alpha1
│   │           ├── appservice_types.go
│   │           ├── doc.go
│   │           ├── register.go
│   │           └── zz_generated.deepcopy.go
│   └── controller
│       ├── add_appservice.go
│       ├── appservice
│       │   └── appservice_controller.go
│       └── controller.go
└── version
    └── version.go
```
