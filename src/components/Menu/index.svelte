<script>
  import A from './a.svelte';
  import SVG from './MobileSvg.svelte';
  import findIgnoreClose from '../../utils/findIgnoreClose';
import { tick } from 'svelte';

  let mobileMenuOpened = false;
  let hasEventListener = false;

  const closeMenu = (e) => {
    if (!findIgnoreClose(e.target)) {
      mobileMenuOpened = false;
      hasEventListener = false;
      document.removeEventListener('click', closeMenu);
    }
  }

  const onMobileMenuClick = async () => {
    mobileMenuOpened = !mobileMenuOpened;
    if (!hasEventListener) {
      await tick();
      document.addEventListener('click', closeMenu);
    }
    hasEventListener = true;
  }
</script>

<button on:click={onMobileMenuClick} class="inline-block md:hidden transition-colors w-10 h-10 rounded-full bg-black text-white hover:text-black hover:bg-white active:text-logo p-1 js:ignore-close">
  <SVG />
</button>
<ul class={`absolute ${mobileMenuOpened ? 'flex' : 'hidden'} md:hidden flex-col z-50 top-20 right-0 text-right bg-black bg-opacity-50 font-bold py-2 js:ignore-close`}>
  <li><A href="/">Home</A></li>
  <li><A href="/about">Sobre Mim</A></li>
  <li><A href="/coach">Coach/Demo Review</A></li>
  <li><A href="/donations">Donations</A></li>
  <li><A href="/contact">Contactos</A></li>
</ul>
<ul class="hidden md:flex justify-end items-center">
  <li><A href="/">Home</A></li>
  <li><A href="/about">Sobre Mim</A></li>
  <li><A href="/coach">Coach/Demo Review</A></li>
  <li><A href="/donations">Donations</A></li>
  <li><A href="/contact">Contactos</A></li>
</ul>
