import {MoonIcon, SunIcon} from 'components/icons';
import animations from './animations.module.css';
import useToggle from './hooks/useToggle';

const ThemeToggle = () => {
  const {theme, toggleTheme} = useToggle();

  const Icon = () => (theme === 'dark' ? <MoonIcon /> : <SunIcon />);

  return (
    <button
      aria-label="Toggle Theme"
      class={`${animations.enter} ${animations.active} rounded-lg border-[1.5px] border-zinc-300 p-2 text-zinc-900 shadow-sm transition-colors hover:bg-zinc-100 dark:border-zinc-800 dark:text-lime-100 dark:hover:bg-zinc-900`}
      onClick={toggleTheme}>
      <Icon />
    </button>
  );
};

export default ThemeToggle;
