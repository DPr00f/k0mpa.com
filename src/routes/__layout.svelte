<script>
  import "../app.postcss";
  import SocialContainer from '../components/SocialContainer/index.svelte';
  import MenuContainer from '../components/MenuContainer/index.svelte';
  import Socials from '../components/Socials/index.svelte';
  import Menu from '../components/Menu/index.svelte';
</script>

<SocialContainer>
  <Socials />
</SocialContainer>
<MenuContainer>
  <Menu />
</MenuContainer>
<slot></slot>
