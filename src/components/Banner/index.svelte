<script>
  export let title;
  export let src;
  export let alt;
</script>

<section class="relative py-48 px-4">
  <div class="z-20 absolute w-full inset-x-0 text-white bottom-11 mx-auto text-center bg-opacity-50 bg-white py-1">
    <h1 class="text-lg md:text-xl lg:text-3xl uppercase text-shadow">{title}</h1>
  </div>
  <div class="absolute inset-0 h-auto z-10">
    <img {src} {alt} class="h-full w-full object-fit-cover">
  </div>
</section>
