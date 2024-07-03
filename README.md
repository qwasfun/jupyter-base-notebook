# jupyter-base-notebook

## Usage

```sh
docker pull qwasfun/jupyter-base-notebook
```

```sh
docker run -p 8888:8888 qwasfun/jupyter-base-notebook
```

## Build

```sh
git clone https://github.com/qwasfun/jupyter-base-notebook.git
cd jupyter-base-notebook
docker build -t qwasfun/jupyter-base-notebook .
```

## feature

- add `C` kernel
- add `JavaScript`, `TypeScript` kernel
- add Git extension
- add Chinese language pack

## 使用

```sh
docker pull qwasfun/jupyter-base-notebook
```

```sh
docker run -p 8888:8888 qwasfun/jupyter-base-notebook
```

## 特色

- 增加了 `C` 语言运行环境
- 增加了 `JavaScript`, `TypeScript` 语言运行环境
- 增加了 Git 插件
- 增加了中文语言包
- [导出为PDF](https://nbconvert.readthedocs.io/en/latest/install.html?#installing-tex)

## base images

- [base-notebook:notebook-\*](https://quay.io/repository/jupyter/base-notebook)
- [changelog](https://jupyter-notebook.readthedocs.io/en/stable/changelog.html)

## relate

- [docker-stacks](https://github.com/jupyter/docker-stacks)
- [docker-stacks docs](https://jupyter-docker-stacks.readthedocs.io/en/latest/index.html)
- [docker jupyter-base-notebook](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-base-notebook)
- [nbconvert](https://github.com/jupyter/nbconvert)
