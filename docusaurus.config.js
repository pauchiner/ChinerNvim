const lightCodeTheme = require('prism-react-renderer/themes/github');
const darkCodeTheme = require('prism-react-renderer/themes/dracula');

const config = {
  title: 'ChinerNvim',
  tagline: 'A out-of-the-box neovim config for web technologies',
  favicon: 'img/favicon.ico',
  url: 'https://pauchiner.github.io',
  baseUrl: '/ChinerNvim',
  organizationName: 'pauchiner',
  projectName: 'ChinerNvim',
  trailingSlash: false,
  deploymentBranch: 'gh-pages',
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  presets: [
    [
      '@docusaurus/preset-classic',
      {
        docs: {
          sidebarPath: require.resolve('./sidebars.js'),
          routeBasePath: '/',
          editUrl:
            'https://github.com/pauchiner/ChinerNvim/edit/docs/',
          },
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
      }
    ],
  ],

  themeConfig: {
    colorMode: {
      respectPrefersColorScheme: true
    },
    navbar: {
      title: 'ChinerNvim',
      hideOnScroll: false,
      logo: {
        src: 'img/logo.png',
      },
      items: [
        {
          to: "documentation/keybindings",
          activeBasePath: "documentation",
          label: "Docs",
          position: "left",
        },
        {
          href: 'https://github.com/pauchiner/ChinerNvim',
          label: 'GitHub',
          position: 'right',
        },
      ],
    },
    footer: {
      style: 'dark',
      copyright: `With 💜 by Pau García Chiner`,
    },
    prism: {
      theme: lightCodeTheme,
      darkTheme: darkCodeTheme,
    },
  },
};

module.exports = config;
