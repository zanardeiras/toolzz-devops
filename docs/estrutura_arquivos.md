├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── modules/
│   │   ├── vpc/
│   │   │   ├── main.tf
│   │   │   ├── variables.tf
│   │   │   └── outputs.tf
│   │   ├── ec2/
│   │   │   ├── main.tf
│   │   │   ├── variables.tf
│   │   │   └── outputs.tf
│   │   ├── rds/
│   │   │   ├── main.tf
│   │   │   ├── variables.tf
│   │   │   └── outputs.tf
│   │   └── eks/
│   │       ├── main.tf
│   │       ├── variables.tf
│   │       └── outputs.tf
├── ci-cd/
│   ├── .github/
│   │   └── workflows/
│   │       └── main.yml
├── docs/
│   ├── README.md
│   ├── implementation_guide.md
│   ├── ci_cd_guide.md
└── video/
    └── video_explicativo.mp4