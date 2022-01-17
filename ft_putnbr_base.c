/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_base.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: seozcan <seozcan@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/01/14 10:50:24 by seozcan           #+#    #+#             */
/*   Updated: 2022/01/14 10:50:47 by seozcan          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>

int	ft_putnbr_base(unsigned long long int nb, char *base)
{
	int						ret;
	unsigned long long int	baselen;

	ret = 0;
	baselen = ft_strlen(base);
	if (nb >= baselen)
		ret += ft_putnbr_base(nb / baselen, base);
	ret += ft_putchar(base[nb % baselen]);
	return (ret);
}
