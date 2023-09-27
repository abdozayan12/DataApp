<a name="readme-top"></a>
<div align="center">
  <h1><b>Gemstone Blog</b></h1>
</div>
<!-- TABLE OF CONTENTS -->
## 📗 Table of Contents
- [📖 Gemstone Blog ](#-gemstone-blog-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
    - [Test](#test)
  - [👥 Author ](#-author-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)
<!-- PROJECT DESCRIPTION -->
# 📖 Gemstone Blog <a name="about-project"></a>
**Gemstone Blog** is an blog app
## 🛠 Built With <a name="built-with"></a>
### Tech Stack <a name="tech-stack"></a>
<details>
  <summary>Server</summary>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
</details>
<details>
  <summary>Database</summary>
    <li><a href="https://www.postgresql.org/">Postgres</a></li>
</details>
<!-- Features -->
### Key Features <a name="key-features"></a>
- **Built using Ruby on Rails**
<p align="right">(<a href="#readme-top">back to top</a>)</p>
<!-- LIVE DEMO
## 🚀 Live Demo <a name="live-demo"></a>
- [Live Demo Link](https://stock-wise.vercel.app/)
<p align="right">(<a href="#readme-top">back to top</a>)</p> -->
<!-- GETTING STARTED -->
## 💻 Getting Started <a name="getting-started"></a>
To get a local copy up and running, follow these steps.
### Prerequisites
In order to run this project you need:
```
    ruby >= 3.2.0
    rails >= 7.0
    postgres >- 15.3
```
### Setup
Clone this repository to your desired folder:
```bash
  git clone https://github.com/abdozayan12/DataApp.git
```

You need to setup database for these project

```
  development = gemstone_blog_dev
  test        = gemstone_blog_test
  production  = gemstone_blog_prod
```

or you can use your own database and change the ```config/database.yml```

```yml
  default: &default
    adapter: postgresql
    encoding: unicode
    pool: 5
    username: [your_username]
    password: [your_password]
    host: localhost

  development:
    <<: *default
    database: [your_database_for_development]

  test:
    <<: *default
    database: [your_database_for_test]

  production:
    <<: *default
    database: [your_database_for_production]
```

### Install

Install this project with:
@@ -123,7 +155,6 @@ it will run the all the unit test of these project

<p align="right">(<a href="#readme-top">back to top</a>)</p>

AUTHORS

## 👥 Author <a name="author"></a>

👤 **Abd elhakim Zayan**

- GitHub: [@Abd elhakim Zayan](https://github.com/abdozayan12)
- Twitter: [@Abd elhakim Zayan](https://twitter.com/zayan_abdo)
- LinkedIn: [@Abd elhakim Zayan](https://www.linkedin.com/in/abdozayan/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<!-- FUTURE FEATURES -->
## 🔭 Future Features <a name="future-features"></a>
- **Add UI System**
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->
## 🤝 Contributing <a name="contributing"></a>
Contributions, issues, and feature requests are welcome!
Feel free to check the [issues page](../../issues/).
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->
## ⭐️ Show your support <a name="support"></a>
If you like this project you can share this project to your friend
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->
## 🙏 Acknowledgments <a name="acknowledgements"></a>
I would like to thank microverse for this project
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->
## 📝 License <a name="license"></a>
This project is [MIT](./LICENSE) licensed.
<p align="right">(<a href="#readme-top">back to top</a>)</p>