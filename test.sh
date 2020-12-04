# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    test.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tjinichi <tjinichi@student.42tokyo.jp>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/03 19:35:22 by tjinichi          #+#    #+#              #
#    Updated: 2020/12/04 16:39:12 by tjinichi         ###   ########.fr        #
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

# # ---------------------prepare part------------------------

rm -rf .TESTAAAAAAAAAAA

mkdir .TESTAAAAAAAAAAA

echo -e "\033[32m\033[1m\033[4mgreen -> Success\033[0m"
echo -e "\033[31m\033[1m\033[4mred   -> Diff found\033[0m"
echo -e "\n\033[36m\033[1m\033[4mStart .\033[0m\n"

# # ---------------------execute part------------------------

# # <No option>
echo -en "\033[33m[No option]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls > .TESTAAAAAAAAAAA/ft_no_option.txt
ls -1tr > .TESTAAAAAAAAAAA/real_no_option.txt

diff .TESTAAAAAAAAAAA/ft_no_option.txt .TESTAAAAAAAAAAA/real_no_option.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[No option] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_no_option.txt .TESTAAAAAAAAAAA/real_no_option.txt
else
    echo -e "\r\033[31m\033[1m[No option]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_no_option.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_no_option.txt\n"
fi

# # <option -G>
# ./ft_mini_ls -G > .TESTAAAAAAAAAAA/ft_option_G.txt
# ls -1tr -G > .TESTAAAAAAAAAAA/real_option_G.txt

# # <option -u>
echo -en "\033[33m[option -u]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -u > .TESTAAAAAAAAAAA/ft_option_u.txt
ls -1tr -u > .TESTAAAAAAAAAAA/real_option_u.txt

diff .TESTAAAAAAAAAAA/ft_option_u.txt .TESTAAAAAAAAAAA/real_option_u.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -u] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_u.txt .TESTAAAAAAAAAAA/real_option_u.txt
else
    echo -e "\r\033[31m\033[1m[option -u]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_u.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_u.txt\n"
fi

# # <option -U>
echo -en "\033[33m[option -U]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -U > .TESTAAAAAAAAAAA/ft_option_large_u.txt
ls -1tr -U > .TESTAAAAAAAAAAA/real_option_large_u.txt

diff .TESTAAAAAAAAAAA/ft_option_large_u.txt .TESTAAAAAAAAAAA/real_option_large_u.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -U] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_large_u.txt .TESTAAAAAAAAAAA/real_option_large_u.txt
else
    echo -e "\r\033[31m\033[1m[option -U]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_large_u.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_large_u.txt\n"
fi

# # <option -s>
echo -en "\033[33m[option -s]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -s > .TESTAAAAAAAAAAA/ft_option_s.txt
ls -1tr -s > .TESTAAAAAAAAAAA/real_option_s.txt

diff .TESTAAAAAAAAAAA/ft_option_s.txt .TESTAAAAAAAAAAA/real_option_s.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -s] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_s.txt .TESTAAAAAAAAAAA/real_option_s.txt
else
    echo -e "\r\033[31m\033[1m[option -s]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_s.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_s.txt\n"
fi

# # # <option -S>
echo -en "\033[33m[option -S]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -S > .TESTAAAAAAAAAAA/ft_option_large_s.txt
ls -1tr -S > .TESTAAAAAAAAAAA/real_option_large_s.txt

diff .TESTAAAAAAAAAAA/ft_option_large_s.txt .TESTAAAAAAAAAAA/real_option_large_s.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -S] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_large_s.txt .TESTAAAAAAAAAAA/real_option_large_s.txt
else
    echo -e "\r\033[31m\033[1m[option -S]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_large_s.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_large_s.txt\n"
fi


# # # <option -R>
echo -en "\033[33m[option -R]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -R > .TESTAAAAAAAAAAA/ft_option_large_r.txt
ls -1tr -R > .TESTAAAAAAAAAAA/real_option_large_r.txt

diff .TESTAAAAAAAAAAA/ft_option_large_r.txt .TESTAAAAAAAAAAA/real_option_large_r.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -R] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_large_r.txt .TESTAAAAAAAAAAA/real_option_large_r.txt
else
    echo -e "\r\033[31m\033[1m[option -R]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_large_r.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_large_r.txt\n"
fi


# # <option -uU>
echo -en "\033[33m[option -uU]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -uU > .TESTAAAAAAAAAAA/ft_option_uU.txt
ls -1tr -uU > .TESTAAAAAAAAAAA/real_option_uU.txt

diff .TESTAAAAAAAAAAA/ft_option_uU.txt .TESTAAAAAAAAAAA/real_option_uU.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -uU] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_uU.txt .TESTAAAAAAAAAAA/real_option_uU.txt
else
    echo -e "\r\033[31m\033[1m[option -uU]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_uU.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_uU.txt\n"
fi


# # <option -us>
echo -en "\033[33m[option -us]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -us > .TESTAAAAAAAAAAA/ft_option_us.txt
ls -1tr -us > .TESTAAAAAAAAAAA/real_option_us.txt

diff .TESTAAAAAAAAAAA/ft_option_us.txt .TESTAAAAAAAAAAA/real_option_us.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -us] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_us.txt .TESTAAAAAAAAAAA/real_option_us.txt
else
    echo -e "\r\033[31m\033[1m[option -us]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_us.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_us.txt\n"
fi

# # <option -uS>
echo -en "\033[33m[option -uS]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -uS > .TESTAAAAAAAAAAA/ft_option_u_large_s.txt
ls -1tr -uS > .TESTAAAAAAAAAAA/real_option_u_large_s.txt

diff .TESTAAAAAAAAAAA/ft_option_u_large_s.txt .TESTAAAAAAAAAAA/real_option_u_large_s.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -uS] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_u_large_s.txt .TESTAAAAAAAAAAA/real_option_u_large_s.txt
else
    echo -e "\r\033[31m\033[1m[option -uS]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_u_large_s.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_u_large_s.txt\n"
fi

# # <option -uR>
echo -en "\033[33m[option -uR]"
echo -en "\033[0m"
sleep 0.2
ls -1tr -uR > .TESTAAAAAAAAAAA/real_option_u_large_r.txt
./ft_mini_ls -uR > .TESTAAAAAAAAAAA/ft_option_u_large_r.txt

diff .TESTAAAAAAAAAAA/ft_option_u_large_r.txt .TESTAAAAAAAAAAA/real_option_u_large_r.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -uR] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_u_large_r.txt .TESTAAAAAAAAAAA/real_option_u_large_r.txt
else
    echo -e "\r\033[31m\033[1m[option -uR]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_u_large_r.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_u_large_r.txt\n"
fi

# # <option -Us>
echo -en "\033[33m[option -Us]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -Us > .TESTAAAAAAAAAAA/ft_option_large_u_s.txt
ls -1tr -Us > .TESTAAAAAAAAAAA/real_option_large_u_s.txt

diff .TESTAAAAAAAAAAA/ft_option_large_u_s.txt .TESTAAAAAAAAAAA/real_option_large_u_s.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -Us] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_large_u_s.txt .TESTAAAAAAAAAAA/real_option_large_u_s.txt
else
    echo -e "\r\033[31m\033[1m[option -Us]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_large_u_s.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_large_u_s.txt\n"
fi

# # <option -US>
echo -en "\033[33m[option -US]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -US > .TESTAAAAAAAAAAA/ft_option_large_u_large_s.txt
ls -1tr -US > .TESTAAAAAAAAAAA/real_option_large_u_large_s.txt

diff .TESTAAAAAAAAAAA/ft_option_large_u_large_s.txt .TESTAAAAAAAAAAA/real_option_large_u_large_s.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -US] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_large_u_large_s.txt .TESTAAAAAAAAAAA/real_option_large_u_large_s.txt
else
    echo -e "\r\033[31m\033[1m[option -US]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_large_u_large_s.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_large_u_large_s.txt\n"
fi

# # <option -UR>
echo -en "\033[33m[option -UR]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -UR > .TESTAAAAAAAAAAA/ft_option_large_u_large_r.txt
ls -1tr -UR > .TESTAAAAAAAAAAA/real_option_large_u_large_r.txt

diff .TESTAAAAAAAAAAA/ft_option_large_u_large_r.txt .TESTAAAAAAAAAAA/real_option_large_u_large_r.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -UR] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_large_u_large_r.txt .TESTAAAAAAAAAAA/real_option_large_u_large_r.txt
else
    echo -e "\r\033[31m\033[1m[option -UR]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_large_u_large_r.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_large_u_large_r.txt\n"
fi

# # <option -sS>
echo -en "\033[33m[option -sS]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -sS > .TESTAAAAAAAAAAA/ft_option_small_s_large_s.txt
ls -1tr -sS > .TESTAAAAAAAAAAA/real_option_small_s_large_s.txt

diff .TESTAAAAAAAAAAA/ft_option_small_s_large_s.txt .TESTAAAAAAAAAAA/real_option_small_s_large_s.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -sS] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_small_s_large_s.txt .TESTAAAAAAAAAAA/real_option_small_s_large_s.txt
else
    echo -e "\r\033[31m\033[1m[option -sS]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_small_s_large_s.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_small_s_large_s.txt\n"
fi

# # <option -sR>
echo -en "\033[33m[option -sR]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -sR > .TESTAAAAAAAAAAA/ft_option_small_s_large_r.txt
ls -1tr -sR > .TESTAAAAAAAAAAA/real_option_small_s_large_r.txt

diff .TESTAAAAAAAAAAA/ft_option_small_s_large_r.txt .TESTAAAAAAAAAAA/real_option_small_s_large_r.txt > /dev/null
if test $? -eq 0; then
    echo -e "\r\033[32m\033[1m[option -sR] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_small_s_large_r.txt .TESTAAAAAAAAAAA/real_option_small_s_large_r.txt
else
    echo -e "\r\033[31m\033[1m[option -sR]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_small_s_large_r.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_small_s_large_r.txt\n"
fi

# # <option -SR>
echo -en "\033[33m[option -SR]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -SR > .TESTAAAAAAAAAAA/ft_option_large_s_large_r.txt
ls -1tr -SR > .TESTAAAAAAAAAAA/real_option_large_s_large_r.txt

diff .TESTAAAAAAAAAAA/ft_option_large_s_large_r.txt .TESTAAAAAAAAAAA/real_option_large_s_large_r.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -SR] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_large_s_large_r.txt .TESTAAAAAAAAAAA/real_option_large_s_large_r.txt
else
    echo -e "\r\033[31m\033[1m[option -SR]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_large_s_large_r.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_large_s_large_r.txt\n"
fi

# # <option -uUs>
echo -en "\033[33m[option -uUs]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -uUs > .TESTAAAAAAAAAAA/ft_option_uUs.txt
ls -1tr -uUs > .TESTAAAAAAAAAAA/real_option_uUs.txt

diff .TESTAAAAAAAAAAA/ft_option_uUs.txt .TESTAAAAAAAAAAA/real_option_uUs.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -uUs] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_uUs.txt .TESTAAAAAAAAAAA/real_option_uUs.txt
else
    echo -e "\r\033[31m\033[1m[option -uUs]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_uUs.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_uUs.txt\n"
fi

# # <option -uUS>
echo -en "\033[33m[option -uUS]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -uUS > .TESTAAAAAAAAAAA/ft_option_uU_large_s.txt
ls -1tr -uUS > .TESTAAAAAAAAAAA/real_option_uU_large_s.txt

diff .TESTAAAAAAAAAAA/ft_option_uU_large_s.txt .TESTAAAAAAAAAAA/real_option_uU_large_s.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -uUS] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_uU_large_s.txt .TESTAAAAAAAAAAA/real_option_uU_large_s.txt
else
    echo -e "\r\033[31m\033[1m[option -uUS]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_uU_large_s.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_uU_large_s.txt\n"
fi

# # <option -uUR>
echo -en "\033[33m[option -uUR]"
echo -en "\033[0m"
sleep 0.2
ls -1tr -uUR > .TESTAAAAAAAAAAA/real_option_uU_large_r.txt
./ft_mini_ls -uUR > .TESTAAAAAAAAAAA/ft_option_uU_large_r.txt

diff .TESTAAAAAAAAAAA/ft_option_uU_large_r.txt .TESTAAAAAAAAAAA/real_option_uU_large_r.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -uUR] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_uU_large_r.txt .TESTAAAAAAAAAAA/real_option_uU_large_r.txt
else
    echo -e "\r\033[31m\033[1m[option -uUR]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_uU_large_r.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_uU_large_r.txt\n"
fi

# # <option -UuR>
echo -en "\033[33m[option -UuR]"
echo -en "\033[0m"
sleep 0.2
ls -1tr -UuR > .TESTAAAAAAAAAAA/real_option_UuR2.txt
./ft_mini_ls -UuR > .TESTAAAAAAAAAAA/ft_option_UuR2.txt

diff .TESTAAAAAAAAAAA/ft_option_UuR2.txt .TESTAAAAAAAAAAA/real_option_UuR2.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -UuR] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_UuR2.txt .TESTAAAAAAAAAAA/real_option_UuR2.txt
else
    echo -e "\r\033[31m\033[1m[option -UuR]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_UuR2.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_UuR2.txt\n"
fi

# # <option -usS>
echo -en "\033[33m[option -usS]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -usS > .TESTAAAAAAAAAAA/ft_option_us_large_s.txt
ls -1tr -usS > .TESTAAAAAAAAAAA/real_option_us_large_s.txt

diff .TESTAAAAAAAAAAA/ft_option_us_large_s.txt .TESTAAAAAAAAAAA/real_option_us_large_s.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -usS] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_us_large_s.txt .TESTAAAAAAAAAAA/real_option_us_large_s.txt
else
    echo -e "\r\033[31m\033[1m[option -usS]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_us_large_s.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_us_large_s.txt\n"
fi

# # <option -usR>
echo -en "\033[33m[option -usR]"
echo -en "\033[0m"
sleep 0.2
ls -1tr -usR > .TESTAAAAAAAAAAA/real_option_us_large_r.txt
./ft_mini_ls -usR > .TESTAAAAAAAAAAA/ft_option_us_large_r.txt

diff .TESTAAAAAAAAAAA/ft_option_us_large_r.txt .TESTAAAAAAAAAAA/real_option_us_large_r.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -usR] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_us_large_r.txt .TESTAAAAAAAAAAA/real_option_us_large_r.txt
else
    echo -e "\r\033[31m\033[1m[option -usR]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_us_large_r.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_us_large_r.txt\n"
fi

# # <option -uSR>
echo -en "\033[33m[option -uSR]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -uSR > .TESTAAAAAAAAAAA/ft_option_u_large_s_large_r.txt
ls -1tr -uSR > .TESTAAAAAAAAAAA/real_option_u_large_s_large_r.txt

diff .TESTAAAAAAAAAAA/ft_option_u_large_s_large_r.txt .TESTAAAAAAAAAAA/real_option_u_large_s_large_r.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -uSR] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_u_large_s_large_r.txt .TESTAAAAAAAAAAA/real_option_u_large_s_large_r.txt
else
    echo -e "\r\033[31m\033[1m[option -uSR]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_u_large_s_large_r.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_u_large_s_large_r.txt\n"
fi

# # <option -UsS>
echo -en "\033[33m[option -UsS]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -UsS > .TESTAAAAAAAAAAA/ft_option_large_us_large_s.txt
ls -1tr -UsS > .TESTAAAAAAAAAAA/real_option_large_us_large_s.txt

diff .TESTAAAAAAAAAAA/ft_option_large_us_large_s.txt .TESTAAAAAAAAAAA/real_option_large_us_large_s.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -UsS] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_large_us_large_s.txt .TESTAAAAAAAAAAA/real_option_large_us_large_s.txt
else
    echo -e "\r\033[31m\033[1m[option -UsS]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_large_us_large_s.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_large_us_large_s.txt\n"
fi

# # <option -UsR>
echo -en "\033[33m[option -UsR]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -UsR > .TESTAAAAAAAAAAA/ft_option_large_us_large_r.txt
ls -1tr -UsR > .TESTAAAAAAAAAAA/real_option_large_us_large_r.txt

diff .TESTAAAAAAAAAAA/ft_option_large_us_large_r.txt .TESTAAAAAAAAAAA/real_option_large_us_large_r.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -UsR] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_large_us_large_r.txt .TESTAAAAAAAAAAA/real_option_large_us_large_r.txt
else
    echo -e "\r\033[31m\033[1m[option -UsR]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_large_us_large_r.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_large_us_large_r.txt\n"
fi

# # <option -USR>
echo -en "\033[33m[option -USR]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -USR > .TESTAAAAAAAAAAA/ft_option_all_large_usr.txt
ls -1tr -USR > .TESTAAAAAAAAAAA/real_option_all_large_usr.txt

diff .TESTAAAAAAAAAAA/ft_option_all_large_usr.txt .TESTAAAAAAAAAAA/real_option_all_large_usr.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -USR] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_all_large_usr.txt .TESTAAAAAAAAAAA/real_option_all_large_usr.txt
else
    echo -e "\r\033[31m\033[1m[option -USR]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_all_large_usr.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_all_large_usr.txt\n"
fi

# # <option -sSR>
echo -en "\033[33m[option -sSR]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -sSR > .TESTAAAAAAAAAAA/ft_option_s_large_ur.txt
ls -1tr -sSR > .TESTAAAAAAAAAAA/real_option_s_large_ur.txt

diff .TESTAAAAAAAAAAA/ft_option_s_large_ur.txt .TESTAAAAAAAAAAA/real_option_s_large_ur.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -sSR] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_s_large_ur.txt .TESTAAAAAAAAAAA/real_option_s_large_ur.txt
else
    echo -e "\r\033[31m\033[1m[option -sSR]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_s_large_ur.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_s_large_ur.txt\n"
fi

# # <option -uUsS>
echo -en "\033[33m[option -uUsS]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -uUsS > .TESTAAAAAAAAAAA/ft_option_uUsS.txt
ls -1tr -uUsS > .TESTAAAAAAAAAAA/real_option_uUsS.txt

diff .TESTAAAAAAAAAAA/ft_option_uUsS.txt .TESTAAAAAAAAAAA/real_option_uUsS.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -uUsS] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_uUsS.txt .TESTAAAAAAAAAAA/real_option_uUsS.txt
else
    echo -e "\r\033[31m\033[1m[option -uUsS]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_uUsS.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_uUsS.txt\n"
fi

# # <option -UsSR>
echo -en "\033[33m[option -UsSR]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -UsSR > .TESTAAAAAAAAAAA/ft_option_UsSR.txt
ls -1tr -UsSR > .TESTAAAAAAAAAAA/real_option_UsSR.txt

diff .TESTAAAAAAAAAAA/ft_option_UsSR.txt .TESTAAAAAAAAAAA/real_option_UsSR.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -UsSR] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_UsSR.txt .TESTAAAAAAAAAAA/real_option_UsSR.txt
else
    echo -e "\r\033[31m\033[1m[option -UsSR]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_UsSR.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_UsSR.txt\n"
fi

# # <option -sSRu>
echo -en "\033[33m[option -sSRu]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -sSRu > .TESTAAAAAAAAAAA/ft_option_sSRu.txt
ls -1tr -sSRu > .TESTAAAAAAAAAAA/real_option_sSRu.txt

diff .TESTAAAAAAAAAAA/ft_option_sSRu.txt .TESTAAAAAAAAAAA/real_option_sSRu.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -sSRu] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_sSRu.txt .TESTAAAAAAAAAAA/real_option_sSRu.txt
else
    echo -e "\r\033[31m\033[1m[option -sSRu]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_sSRu.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_sSRu.txt\n"
fi

# # <option -SRuU>
echo -en "\033[33m[option -SRuU]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -SRuU > .TESTAAAAAAAAAAA/ft_option_SRuU.txt
ls -1tr -SRuU > .TESTAAAAAAAAAAA/real_option_SRuU.txt

diff .TESTAAAAAAAAAAA/ft_option_SRuU.txt .TESTAAAAAAAAAAA/real_option_SRuU.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -SRuU] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_SRuU.txt .TESTAAAAAAAAAAA/real_option_SRuU.txt
else
    echo -e "\r\033[31m\033[1m[option -SRuU]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_SRuU.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_SRuU.txt\n"
fi

# # <option -RuUs>
echo -en "\033[33m[option -RuUs]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -RuUs > .TESTAAAAAAAAAAA/ft_option_RuUs.txt
ls -1tr -RuUs > .TESTAAAAAAAAAAA/real_option_RuUs.txt

diff .TESTAAAAAAAAAAA/ft_option_RuUs.txt .TESTAAAAAAAAAAA/real_option_RuUs.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -RuUs] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_RuUs.txt .TESTAAAAAAAAAAA/real_option_RuUs.txt
else
    echo -e "\r\033[31m\033[1m[option -RuUs]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_RuUs.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_RuUs.txt\n"
fi

# # <option -UusR>
echo -en "\033[33m[option -UusR]"
echo -en "\033[0m"
sleep 0.2
ls -1tr -UusR > .TESTAAAAAAAAAAA/real_option_uUSR2.txt
./ft_mini_ls -UusR > .TESTAAAAAAAAAAA/ft_option_uUSR2.txt

diff .TESTAAAAAAAAAAA/ft_option_uUSR2.txt .TESTAAAAAAAAAAA/real_option_uUSR2.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -UusR] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_uUSR2.txt .TESTAAAAAAAAAAA/real_option_uUSR2.txt
else
    echo -e "\r\033[31m\033[1m[option -UusR]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_uUSR2.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_uUSR2.txt\n"
fi

# # <option -uUsSR>
echo -en "\033[33m[option -uUsSR]"
echo -en "\033[0m"
sleep 0.2
./ft_mini_ls -uUsSR > .TESTAAAAAAAAAAA/ft_option_uUsSR.txt
ls -1tr -uUsSR > .TESTAAAAAAAAAAA/real_option_uUsSR.txt

diff .TESTAAAAAAAAAAA/ft_option_uUsSR.txt .TESTAAAAAAAAAAA/real_option_uUsSR.txt > /dev/null
if test $? -eq 0 ; then
    echo -e "\r\033[32m\033[1m[option -uUsSR] \n\033[0m"
    rm -f .TESTAAAAAAAAAAA/ft_option_uUsSR.txt .TESTAAAAAAAAAAA/real_option_uUsSR.txt
else
    echo -e "\r\033[31m\033[1m[option -uUsSR]\033[0m"
    echo -e "\033[33m\033[1mYours    ->\033[0m .TESTAAAAAAAAAAA/ft_option_uUsSR.txt"
    echo -e "\033[33m\033[1mOriginal ->\033[0m .TESTAAAAAAAAAAA/real_option_uUsSR.txt\n"
fi


# # ---------------------output part------------------------

ls -G .TESTAAAAAAAAAAA | grep "txt"
if test $? -eq 1 ; then
    echo -e "\n\033[1m\033[36m$USER san .\nPerfectly written .\nIf there are any loopholes in the test cases, I would be grateful if you could tell me about them.\033[0;39m\n"
    rm -rf .TESTAAAAAAAAAAA
    echo -e "\033[1m\033[4m\033[35mDelete ft_mini_ls? (Y/N)\033[0m"
    while :
    do
    echo -en "\033[1m\033[32mYou : \033[0m"
    read str
    case "$str" in
    [Yy])
        echo -e "\033[1m\033[36mOK ."
        echo -en "delete ..."
        make fclean > /dev/null
        sleep 1
        echo -e "\rdeleted bye ...\033[0m"
        exit 0
        ;;
    [Nn])
        echo -e "\033[1m\033[36mOK ."
        echo -e "bye ...\033[0m"
        exit 0
        ;;
    *)
        echo -e "\033[1m\033[4m\033[35mPlease type Y/y or N/n\033[0m"
    esac
    done
else
    echo -e  "\n\033[1m\033[33m$USER san .\nDiff case found .\nGood luck fixing it .\nThe output results are in the [.TESTAAAAAAAAAAA]\033[0;m\n"
fi
