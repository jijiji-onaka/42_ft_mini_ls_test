# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    leak.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tjinichi <tjinichi@student.42tokyo.jp>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/03 19:35:29 by tjinichi          #+#    #+#              #
#    Updated: 2020/12/04 05:06:07 by tjinichi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# define RESET	\033[0m
# define RED	\033[31m
# define GREEN	\033[32m
# define YELLOW	\033[33m
# define BLUE	\033[34m
# define MAGENT	\033[35m
# define CYAAN	\033[36m
# define WHITE	\033[37m
# define B_RESET \033[49m
# define B_YELLOW \033[43m
# define B_CYAAN \033[46m
# define BOLD 	\033[1m
# define UNDER_LINE \033[4m

echo -e "\033[1m\033[4m\033[36mDoes the program have an infinite loop? (Y/N)\033[0m"

while :
do
  echo -en "\033[1m\033[32mYou : \033[0m"
  read str
  case "$str" in
  [Yy])
    echo -e "\033[1m\033[36mOK ."
    echo -e "Start leaks cheak ...\033[0m"
    ;;
  [Nn])
    echo -e "\033[1m\033[4m\033[36mTo check the memory leaks you need to run the program in the background .\n\033[0m"
    echo -e "\033[1m\033[4m\033[36mAdd the following code to your program . ↓\n\033[0m"
    echo -e "\033[1m__attribute__((destructor))"
    echo -e "\033[1mvoid end()"
    echo -e "\033[1m{"
    echo -e "\033[1m	while (1)\n	   ;"
    echo -e "\033[1m}\n\033[0m"
    exit 0
    ;;
  *)
    echo -e "\033[1m\033[4m\033[36mPlease type Y/y or N/n\033[0m"
esac
done



./ft_mini_ls $1 > /dev/null &
sleep 1
leaks $! | grep -E ' leaks?' | grep "0 leaks" > /dev/null
if [ $? -eq 0 ] ; then
    echo -e "\033[32m\033[1m[no leak program .]\033[0m"
elif [ $? -eq 1 ] ; then
    echo -e "\033[31m\033[1m[found leaks]\033[0m"
    leaks $! | grep -E ' leaks?'
    leaks $! | grep -E ' ROOT LEAK'
	echo -e "\033[1m\033[36m\033[4mGood luck looking for it .\033[0m"
fi
kill $!
