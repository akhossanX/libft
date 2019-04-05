/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: akhossan <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/03/31 21:20:35 by akhossan          #+#    #+#             */
/*   Updated: 2019/04/02 21:55:10 by akhossan         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char			*ft_strjoin(char const *s1, char const *s2)
{
	size_t		i;
	char		*joined;

	if (!s1 || !s2)
		return (NULL);
	i = ft_strlen(s1) + ft_strlen(s1);
	if (!(joined = (char *)ft_strnew(sizeof(char) * (i + 1))))
		return (NULL);
	ft_strcpy(joined, s1);
	ft_strcat(joined, s2);
	return (joined);
}
