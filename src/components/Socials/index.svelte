<script>
  import Anchor from '../Anchor/index.svelte';
  import { SOCIALS } from '../../config';
</script>

<ul class="h-12 flex justify-end items-center">
  {#each Object.keys(SOCIALS) as social}
    <li class="flex-initial"><Anchor href={SOCIALS[social]} class="transition-colors p-2 rounded-full text-black bg-white hover:text-white hover:bg-black"><i class="icon-{social}" /></Anchor></li>
  {/each}
</ul>
