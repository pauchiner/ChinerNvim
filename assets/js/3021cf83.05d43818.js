"use strict";(self.webpackChunkChinerNvim=self.webpackChunkChinerNvim||[]).push([[538],{3905:(e,t,n)=>{n.d(t,{Zo:()=>s,kt:()=>g});var r=n(7294);function i(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function a(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function o(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?a(Object(n),!0).forEach((function(t){i(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):a(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function l(e,t){if(null==e)return{};var n,r,i=function(e,t){if(null==e)return{};var n,r,i={},a=Object.keys(e);for(r=0;r<a.length;r++)n=a[r],t.indexOf(n)>=0||(i[n]=e[n]);return i}(e,t);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);for(r=0;r<a.length;r++)n=a[r],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(i[n]=e[n])}return i}var c=r.createContext({}),u=function(e){var t=r.useContext(c),n=t;return e&&(n="function"==typeof e?e(t):o(o({},t),e)),n},s=function(e){var t=u(e.components);return r.createElement(c.Provider,{value:t},e.children)},p="mdxType",m={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},d=r.forwardRef((function(e,t){var n=e.components,i=e.mdxType,a=e.originalType,c=e.parentName,s=l(e,["components","mdxType","originalType","parentName"]),p=u(n),d=i,g=p["".concat(c,".").concat(d)]||p[d]||m[d]||a;return n?r.createElement(g,o(o({ref:t},s),{},{components:n})):r.createElement(g,o({ref:t},s))}));function g(e,t){var n=arguments,i=t&&t.mdxType;if("string"==typeof e||i){var a=n.length,o=new Array(a);o[0]=d;var l={};for(var c in t)hasOwnProperty.call(t,c)&&(l[c]=t[c]);l.originalType=e,l[p]="string"==typeof e?e:i,o[1]=l;for(var u=2;u<a;u++)o[u]=n[u];return r.createElement.apply(null,o)}return r.createElement.apply(null,n)}d.displayName="MDXCreateElement"},2418:(e,t,n)=>{n.r(t),n.d(t,{assets:()=>c,contentTitle:()=>o,default:()=>m,frontMatter:()=>a,metadata:()=>l,toc:()=>u});var r=n(7462),i=(n(7294),n(3905));const a={id:"getting-started",title:"ChinerNvim",sidebar_label:"Getting Started",sidebar_position:1,slug:"/"},o=void 0,l={unversionedId:"getting-started",id:"getting-started",title:"ChinerNvim",description:"A out-of-the-box neovim configuration for react and web technologies \ud83c\udf10",source:"@site/docs/getting-started.mdx",sourceDirName:".",slug:"/",permalink:"/ChinerNvim/",draft:!1,editUrl:"https://github.com/pauchiner/ChinerNvim/edit/docs/docs/getting-started.mdx",tags:[],version:"current",sidebarPosition:1,frontMatter:{id:"getting-started",title:"ChinerNvim",sidebar_label:"Getting Started",sidebar_position:1,slug:"/"},sidebar:"packages",next:{title:"\u2328\ufe0f Keybindings",permalink:"/ChinerNvim/documentation/keybindings"}},c={},u=[{value:"\u2728 Features",id:"-features",level:2},{value:"\ud83d\udee0\ufe0f Installation",id:"\ufe0f-installation",level:2},{value:"\ud83e\uddfe Requirements",id:"-requirements",level:3},{value:"\u26a1 Quick Start",id:"-quick-start",level:3}],s={toc:u},p="wrapper";function m(e){let{components:t,...n}=e;return(0,i.kt)(p,(0,r.Z)({},s,n,{components:t,mdxType:"MDXLayout"}),(0,i.kt)("p",null,"A out-of-the-box neovim configuration for react and web technologies \ud83c\udf10"),(0,i.kt)("img",{style:{marginLeft:-25},src:"https://github.com/pauchiner/ChinerNvim/blob/main/.github/images/img2.png?raw=true",height:"333"}),(0,i.kt)("h2",{id:"-features"},"\u2728 Features"),(0,i.kt)("ul",null,(0,i.kt)("li",{parentName:"ul"},"Language server protocol built-in"),(0,i.kt)("li",{parentName:"ul"},"Prettier formatter by default "),(0,i.kt)("li",{parentName:"ul"},"Git integration"),(0,i.kt)("li",{parentName:"ul"},"File explorer"),(0,i.kt)("li",{parentName:"ul"},"Telescope for finding"),(0,i.kt)("li",{parentName:"ul"},"Syntax highlighting")),(0,i.kt)("h2",{id:"\ufe0f-installation"},"\ud83d\udee0\ufe0f Installation"),(0,i.kt)("h3",{id:"-requirements"},"\ud83e\uddfe Requirements"),(0,i.kt)("ul",null,(0,i.kt)("li",{parentName:"ul"},(0,i.kt)("a",{parentName:"li",href:"https://www.nerdfonts.com/font-downloads"},"Nerd Fonts")),(0,i.kt)("li",{parentName:"ul"},(0,i.kt)("a",{parentName:"li",href:"https://github.com/neovim/neovim/releases/tag/v0.8.2"},"Neovim 0.8.2 or higher"))),(0,i.kt)("h3",{id:"-quick-start"},"\u26a1 Quick Start"),(0,i.kt)("pre",null,(0,i.kt)("code",{parentName:"pre",className:"language-bash"},"# Move to .config directory\n$ cd ~/.config\n\n# Back up our current config (Recommended)\n$ cp -r nvim nvim.backup\n\n# Clone repository\n$ git clone https://github.com/pauchiner/chiner.nvim ~/.config/nvim\n\n# Run, when all plugins are installed, reload it \n$ nvim\n")))}m.isMDXComponent=!0}}]);