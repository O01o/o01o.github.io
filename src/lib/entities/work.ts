import { PrismaClient } from "@prisma/client";

// const prisma = new PrismaClient();

/*
async function createSampleWork() {
    await prisma.work.create({
        data: {
            imgPath: "../assets/images/svelte.svg",
            title: "Flutter鼻歌",
            content: "Flutter×FastAPI×Google Cloud Runで、録音ファイルをMIDIに変換することができます。"
        },
    })
}
*/


async function main() {
    // await createSampleWork();
    // const works = await prisma.work.findMany();
    // console.log(works);
    console.log("hello");
}

main()
/*  
    .then(async () => {
        await prisma.$disconnect()
    })
    .catch(async (e) => {
        console.error(e)
        await prisma.$disconnect()
    })
*/