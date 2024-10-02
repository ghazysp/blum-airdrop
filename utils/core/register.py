import pyrogram

from utils.core import logger
from data import config


async def create_sessions():
    while True:
        session_name = input('\nMasuk.....\nKetik nama untuk sesi '
                             'bos: ')
        if not session_name: 
            return

        session = pyrogram.Client(
            api_id=config.API_ID,
            api_hash=config.API_HASH,
            name=session_name,
            workdir=config.WORKDIR,
        )

        async with session:
            user_data = await session.get_me()

        logger.success(f'Sukses bos {user_data.username} | {user_data.phone_number}\n'
                       f'Sukses bos {user_data.username} | {user_data.phone_number}')
