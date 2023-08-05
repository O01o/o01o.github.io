<script>
    import Button, { Label } from "@smui/button";
    // import IconButton { Icon } from "@smui/icon-button";
    import Card, { Content, Actions, ActionButtons, ActionIcons, Media, MediaContent, PrimaryAction } from "@smui/card";

    export let title;
    export let skills;
    export let details;
    export let imagePath;
    export let githubURL;
</script>

<style>
    .card-container {
        margin: 0px;
    }
</style>

<main>
    <div class="card-container">
        <Card padded>
            <Media class="card-media-16x9" aspectRatio="16x9" />
            <Content class="mdc-typography--body2">
                <h2 class="mdc-typography--headline6" style="margin: 0;">{title}</h2>
                <h3 class="mdc-typography--subtitle2" style="margin: 0 0 10px; color: #888;">{skills}</h3>
                {details}
            </Content>
            <Actions>
                <ActionButtons>
                    <Button href="{githubURL}">
                        <Label>Github Code</Label>
                    </Button>
                </ActionButtons>
            </Actions>
        </Card>
    </div>
</main>