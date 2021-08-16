<script>
  import Banner from '../components/Banner/index.svelte';
</script>

<style>
  iframe {
    width: 100% !important;
    height: 100% !important;
  }
</style>

<Banner title="Criador de conteúdo - Valorant Pro Player" src="/banners/kompa_home.jpg" alt="Kompa a olhar para a camera" />
<div class="bg-gray-200">
  <div class="container mx-auto py-16 px-4 flex items-center justify-evenly flex-wrap">
    <div class="stream-sm md:stream-md lg:stream-md xl:stream-xl border-2 border-red-700 rounded-lg overflow-hidden">
      <iframe
        title="K0mpa Stream"
        src={`https://player.twitch.tv/?channel=k0mpa&parent=${window?.location?.hostname || 'k0mpa-com.vercel.app'}`}
        width="720"
        height="420"
        allowfullscreen="allowfullscreen">
      </iframe>
    </div>
    <div class="uppercase w-80 text-xl md:w-96 lg:text-2xl lg:width-500 text-gray-700 text-shadow-soft">
      O Padrin está em todo o lado!
      <br />
      Para não perderes as lives mais estouradas, junta-te a mim e vem pôr um pedrinha fio
      <img class="inline-block w-7" alt="emote kompa pedriha" src="/emotes/pedrinha.png" />
      <img class="inline-block w-7" alt="emote kompa estourado fio" src="/emotes/estourado.png" />
      <img class="inline-block w-7" alt="emote kompa school" src="/emotes/londonSchool.png" />
    </div>
  </div>
</div>
