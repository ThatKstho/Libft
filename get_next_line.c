/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ohachim <othmanehachim@gmail.com>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/31 21:02:42 by ohachim           #+#    #+#             */
/*   Updated: 2019/01/17 21:52:09 by ohachim          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/*char	*ft_trashfree(char *str, char c)
{
	char	*temp;
	int		i;

	i = 0;
	while (str[i] != c && str[i] != '\0')
		i++;
	temp = ft_strdup(&str[i]);
	free(str);
	str = temp;
	return (str);
}*/

int		ft_ret_line_read(int ret, char c, size_t len)
{
	if (ret == -1)
		return (-1);
	if (ret == 0 && c == '\0' && !len)
		return (0);
	return (1);
}

int		get_next_line(const int fd, char **line)
{
	char		buf[BUFF_SIZE + 1];
	static char	*fill[4096];
	int			ret;

	if (!line || BUFF_SIZE < 0 || read(fd, buf, 0) == -1 || fd < 0)
		return (-1);
	if (fill[fd] == NULL)
		fill[fd] = ft_strnew(1);
	while ((ret = read(fd, buf, BUFF_SIZE)))
	{
		buf[ret] = '\0';
		fill[fd] = ft_strjoin(fill[fd], buf);
		if ((ft_strchr(buf, '\n')))
			break ;
	}
	*line = ft_strndup(fill[fd], '\n');
	/*fill[fd] = ft_trashfree(fill[fd], '\n');*/
	while (*fill[fd] != '\n' && *fill[fd] != '\0')
		fill[fd]++;
	if (*fill[fd] == '\n')
	{
		fill[fd]++;
		return (1);
	}
	return (ft_ret_line_read(ret, *fill[fd], ft_strlen(*line)));
}

/*int		main(void)
{
	int		fd;
	char	*line;

	fd = open("text", O_RDONLY);
	if (fd < 0)
		return (0);
	while ((get_next_line(fd, &line)))
	{
		ft_putstr(line);
		ft_putchar('\n');
	}
	return (0);
}*/
