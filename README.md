# 42_ft_mini_ls_test

ft_mini_lsのテストです。

<img width="322" alt="スクリーンショット 2020-12-04 0 53 44" src="https://user-images.githubusercontent.com/60336548/101053470-2b898c80-35cb-11eb-9b1b-68fb68080772.png">

## Installation
> ``git clone git@github.com:jijiji-onaka/42_ft_mini_ls_test.git```

`ft_mini_ls`があるディレクトリでcloneしてください。

Clone in the directory where `ft_mini_ls` is located.

## Usage

### diff check
`make`　または　`make bonus`をしてから

make` or `make bonus` and then

> ```git clone git@github.com:jijiji-onaka/42_ft_mini_ls_test.git && bash 42_ft_mini_ls_test.git/test.sh```

これでテストが始まります。

Now the testing begins.

### leak check
leaksコマンドによるチェックなので`-fsanitize=address`を付けずにコンパイルしてください。

Compile without the `-fsanitize=address` because it is checked by the leaks command.

> ```git clone git@github.com:jijiji-onaka/42_ft_mini_ls_test.git && bash 42_ft_mini_ls_test.git/leak.sh```

これでleaksチェックできます。

Now you can check the leaks.
