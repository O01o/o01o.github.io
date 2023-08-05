<script>
    import Button, { Label } from "@smui/button";
    // import IconButton { Icon } from "@smui/icon-button";
    import Card, { Content, Actions, ActionButtons, ActionIcons, Media, MediaContent, PrimaryAction } from "@smui/card";

    export let name;
    export let stars;
    export let details;
    export let imagePath;
</script>

<style>
    .card-container {
        margin: 0px;
    }
    img {
        height: 200px;
    }
</style>

<main>
    <div class="card-container">
        <Card padded>
            <Media class="card-media-16x9" aspectRatio="16x9">
                <MediaContent>
                    <img src={imagePath} alt="">
                </MediaContent>
            </Media>
            <Content class="mdc-typography--body2">
                <h2 class="mdc-typography--headline6" style="margin: 0;">{name}</h2>
                {#each Array({stars}) as _unused, i}
                    <h3 class="mdc-typography--subtitle2" style="margin: 0 0 10px; color: #888;">☆</h3>
                {/each}
                {details}
            </Content>
        </Card>
    </div>
</main>