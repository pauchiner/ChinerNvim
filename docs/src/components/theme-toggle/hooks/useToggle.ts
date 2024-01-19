import {useEffect, useState} from 'preact/hooks';

type ThemeType = 'light' | 'dark';

const getInitialTheme = (): ThemeType => {
  if (localStorage.getItem('theme') !== null)
    return localStorage.getItem('theme') as ThemeType;

  if (window.matchMedia('(prefers-color-scheme: dark)').matches) return 'dark';

  return 'light';
};

const useTheme = () => {
  const [theme, setTheme] = useState<ThemeType>(getInitialTheme());

  const toggleTheme = (): void => {
    const result = theme === 'light' ? 'dark' : 'light';
    localStorage.setItem('theme', result);
    setTheme(result);
  };

  useEffect(() => {
    if (theme === 'light') document.documentElement.classList.remove('dark');
    else document.documentElement.classList.add('dark');
  }, [theme]);

  return {theme, toggleTheme};
};

export default useTheme;
