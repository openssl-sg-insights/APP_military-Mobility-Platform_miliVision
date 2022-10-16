# Generated by Django 4.0 on 2022-10-10 08:03

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('login', '0001_initial'),
        ('tms', '0001_initial'),
        ('incident', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='rescue',
            name='car',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='rescue_car', to='tms.car'),
        ),
        migrations.AddField(
            model_name='rescue',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='rescue_user', to='login.user'),
        ),
        migrations.AddField(
            model_name='incident',
            name='car',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='incident_car', to='tms.car'),
        ),
        migrations.AddField(
            model_name='incident',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='incident_user', to='login.user'),
        ),
    ]