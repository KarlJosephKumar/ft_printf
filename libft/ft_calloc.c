/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kakumar <kakumar@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/28 09:13:12 by kakumar           #+#    #+#             */
/*   Updated: 2022/12/10 15:18:30 by kakumar          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_calloc(size_t count, size_t size)
{
	void	*ptr;
	size_t	bytes;

	if (count == SIZE_MAX || size == SIZE_MAX)
		return (NULL);
	bytes = count * size;
	ptr = malloc(bytes);
	if (ptr != NULL)
		ft_memset(ptr, 0, bytes);
	return (ptr);
}
