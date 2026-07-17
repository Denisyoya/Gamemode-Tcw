#include <a_samp>
#include <zcmd>  // Menggunakan zcmd untuk command handler

new bool:r5_check_enabled = true;  // Variabel global untuk mengontrol apakah pengecekan R5 diaktifkan

public OnFilterScriptInit()
{
    print("[FS] Only R5 FilterScript Loaded.");
    return 1;
}

public OnPlayerConnect(playerid)
{
    // Cek apakah pengecekan R5 diaktifkan
    if (!r5_check_enabled)
    {
        SendClientMessage(playerid, -1, "Selamat datang di server! Pengecekan R5 dinonaktifkan.");
        return 1;
    }

    new version[64];
    GetPlayerVersion(playerid, version, sizeof(version));  // Mendapatkan versi client pemain

    // Cek apakah versi client adalah R5 (versi 0.3.7-R5)
    if (strcmp(version, "0.3.7-R5", true) != 0)
    {
        Kick(playerid);  // Jika bukan R5, keluarkan pemain dari server
        return 1;
    }

    SendClientMessage(playerid, -1, "Selamat datang di server! Anda menggunakan client versi R5.");
    return 1;
}

public OnFilterScriptExit()
{
    print("[FS] Only R5 FilterScript Unloaded.");
    return 1;
}

// Command untuk mengaktifkan atau menonaktifkan pengecekan R5
CMD:toggler5(playerid)
{
    // Pastikan yang menjalankan command adalah admin (level 1 ke atas)
    if (!IsPlayerAdmin(playerid))
    {
        SendClientMessage(playerid, -1, "Hanya admin yang dapat menggunakan perintah ini.");
        return 1;
    }

    // Toggle status pengecekan R5
    r5_check_enabled = !r5_check_enabled;

    if (r5_check_enabled)
    {
        SendClientMessage(playerid, -1, "Pengecekan R5 diaktifkan.");
        print("[FS] Pengecekan R5 diaktifkan oleh admin.");
    }
    else
    {
        SendClientMessage(playerid, -1, "Pengecekan R5 dinonaktifkan.");
        print("[FS] Pengecekan R5 dinonaktifkan oleh admin.");
    }

    return 1;
}

